document.addEventListener('DOMContentLoaded', () => {
    loadFavorites();
    fetchProducts();
});

function fetchProducts() {
    fetch('/kursa/products')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(products => {
            const productsContainer = document.getElementById('favorites-container');
            products.forEach(product => {
                const productElement = createProductElement(product);
                productsContainer.appendChild(productElement);
            });
            loadFavorites(); // Вызываем после добавления всех продуктов
        })
        .catch(error => console.error('Error loading products:', error));
}

function loadFavorites() {
    const favorites = JSON.parse(localStorage.getItem('favorites')) || [];
    const favoritesContainer = document.getElementById('favorites-container');

    if (favorites.length === 0) {
        favoritesContainer.innerHTML = '<p>У вас нет избранных товаров.</p>';
        return;
    }

    const uniqueFavorites = [...new Set(favorites)];

    uniqueFavorites.forEach(productId => {
        const productElement = document.querySelector(`.product[data-product-id="${productId}"]`);
        if (productElement) {
            const favoriteButton = productElement.querySelector('.favorite');
            if (favoriteButton) {
                favoriteButton.classList.add('favorite-added');
                productElement.classList.remove('hidden'); // Удаляем класс 'hidden'
                productElement.classList.add('visible'); // Добавляем класс 'visible'
            }
        }
    });
}

function createProductElement(product) {
    const productElement = document.createElement('div');
    productElement.classList.add('product', 'hidden'); // Добавляем класс 'hidden'
    productElement.dataset.productId = product.productId;

    productElement.innerHTML = `
        <img src="${product.imgUrl}" alt="${product.productName}">
        <h3>${product.productName}</h3>
        <p class="price">${product.price}</p>
        <div class="product-actions">
            <button class="favorite ${isFavorite(product.productId) ? 'favorite-added' : ''}" data-product-id="${product.productId}">Избранное</button>
            <button class="add-to-cart">В корзину</button>
        </div>
    `;

    const favoriteButton = productElement.querySelector('.favorite');
    favoriteButton.addEventListener('click', () => {
        toggleFavorite(product.productId, favoriteButton);
    });

    return productElement;
}

function toggleFavorite(productId, button) {
    let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
    const productElement = document.querySelector(`.product[data-product-id="${productId}"]`);

    if (favorites.includes(productId)) {
        favorites = favorites.filter(id => id !== productId);
        button.classList.remove('favorite-added');
        productElement.classList.remove('visible');
        productElement.classList.add('hidden');
    } else {
        favorites.push(productId);
        button.classList.add('favorite-added');
        productElement.classList.remove('hidden');
        productElement.classList.add('visible');
    }

    localStorage.setItem('favorites', JSON.stringify(favorites));
    window.dispatchEvent(new Event('storage'));
}

function isFavorite(productId) {
    const favorites = JSON.parse(localStorage.getItem('favorites')) || [];
    return favorites.includes(productId);
}
