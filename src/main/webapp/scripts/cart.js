document.addEventListener('DOMContentLoaded', () => {
    fetchProducts().then(products => {
        console.log('Products fetched:', products);
        loadCart(products).then(() => {
            setupDeliveryOptions();
        });
    });
});

function fetchProducts() {
    return fetch('/kursa/products')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .catch(error => {
            console.error('Error fetching products:', error);
            return [];
        });
}

function getProductById(products, productId) {
    const product = products.find(product => product.productId.toString() === productId) || null;
    if (!product) {
        console.error('Product not found for ID:', productId);
    }
    return product;
}


function loadCart(products) {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartContainer = document.querySelector('#cart-container tbody');
    const totalAmountElement = document.getElementById('total-amount');
    const infoDeliveryBlock = document.getElementById('info-delivery-block');

    console.log('Cart items:', cart);

    if (!cartContainer) {
        console.error('Cart container not found');
        return Promise.resolve();
    }

    if (cart.length === 0) {
        cartContainer.innerHTML = '<tr><td colspan="5">Ваша корзина пуста.</td></tr>';
        totalAmountElement.textContent = '0 руб.';
        infoDeliveryBlock.style.display = 'none';
        return Promise.resolve();
    }

    infoDeliveryBlock.style.display = 'flex';

    let totalAmount = 0;
    cart.forEach(item => {
        if (!item.productId) {
            console.error('Cart item has no productId:', item);
            return;
        }
        const product = getProductById(products, item.productId);
        if (product) {
            const cartItemElement = createCartItemElement(product, item.quantity);
            cartContainer.appendChild(cartItemElement);
            totalAmount += product.price * item.quantity;
        }
    });

    totalAmountElement.textContent = `${totalAmount} руб.`;
    return Promise.resolve();
}

function createCartItemElement(product, quantity) {
    console.log('Creating cart item element for product:', product);

    const cartItemElement = document.createElement('tr');
    cartItemElement.innerHTML = `
        <td><img src="${product.imgUrl}" alt="${product.productName}"></td>
        <td>${product.productName}</td>
        <td>
            <div class="counter">
                <button class="decrease-quantity">-</button>
                <input type="number" value="${quantity}" min="1" readonly>
                <button class="increase-quantity">+</button>
            </div>
        </td>
        <td class="total-price">${product.price * quantity} руб.</td>
        <td><button class="remove-from-cart" data-product-id="${product.productId}">Удалить</button></td>
    `;

    const decreaseButton = cartItemElement.querySelector('.decrease-quantity');
    const increaseButton = cartItemElement.querySelector('.increase-quantity');
    const removeFromCartButton = cartItemElement.querySelector('.remove-from-cart');
    const quantityInput = cartItemElement.querySelector('input[type="number"]');
    const totalPriceElement = cartItemElement.querySelector('.total-price');

    decreaseButton.addEventListener('click', () => {
        if (quantity > 1) {
            quantity--;
            updateCartItem(product.productId, quantity);
            quantityInput.value = quantity;
            totalPriceElement.textContent = `${product.price * quantity} руб.`;
            fetchProducts().then(products => updateTotalAmount(products));
        }
    });

    increaseButton.addEventListener('click', () => {
        quantity++;
        updateCartItem(product.productId, quantity);
        quantityInput.value = quantity;
        totalPriceElement.textContent = `${product.price * quantity} руб.`;
        fetchProducts().then(products => updateTotalAmount(products));
    });

    removeFromCartButton.addEventListener('click', () => {
        removeFromCart(product.productId);
        cartItemElement.remove();
        fetchProducts().then(products => {
            updateTotalAmount(products).then(() => {
                if (isCartEmpty()) {
                    document.querySelector('#cart-container tbody').innerHTML = '<tr><td colspan="5">Ваша корзина пуста.</td></tr>';
                    document.getElementById('total-amount').textContent = '0 руб.';
                    document.getElementById('info-delivery-block').style.display = 'none';
                }
            });
        });
    });

    return cartItemElement;
}

function updateCartItem(productId, quantity) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const itemIndex = cart.findIndex(item => item.productId === productId);
    if (itemIndex !== -1) {
        cart[itemIndex].quantity = quantity;
    }
    localStorage.setItem('cart', JSON.stringify(cart));
}

function removeFromCart(productId) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart = cart.filter(item => item.productId !== productId);
    localStorage.setItem('cart', JSON.stringify(cart));
    if (window.location.pathname.includes('cart.jsp')) {
        location.reload();
    }
}

function updateTotalAmount(products) {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    let totalAmount = 0;

    cart.forEach(item => {
        const product = getProductById(products, item.productId);
        if (product) {
            totalAmount += product.price * item.quantity;
        } else {
            console.error('Product not found for ID:', item.productId);
        }
    });

    const totalAmountElement = document.getElementById('total-amount');
    totalAmountElement.textContent = `${totalAmount} руб.`;
    return Promise.resolve();
}

function isCartEmpty() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    return cart.length === 0;
}

function setupDeliveryOptions() {
    const deliveryOptions = document.getElementsByName('delivery');
    const addressContainer = document.getElementById('address-container');
    const addressInput = document.getElementById('address');

    deliveryOptions.forEach(option => {
        option.addEventListener('change', () => {
            if (option.value === 'pickup') {
                addressContainer.style.display = 'none';
                addressInput.value = '';
            } else {
                addressContainer.style.display = 'block';
            }
        });
    });

    const selectedOption = document.querySelector('input[name="delivery"]:checked').value;
    if (selectedOption === 'pickup') {
        addressContainer.style.display = 'none';
    } else {
        addressContainer.style.display = 'block';
    }
}
