document.addEventListener('DOMContentLoaded', () => {
    const clearCartButton = document.getElementById('clear-cart');
    const clearFavoritesButton = document.getElementById('clear-favorites');

    if (clearCartButton) {
        clearCartButton.addEventListener('click', clearCart);
    }

    if (clearFavoritesButton) {
        clearFavoritesButton.addEventListener('click', clearFavorites);
    }
});

function clearCart() {
    localStorage.removeItem('cart');
    updateCartCount();
    location.reload(); // Перезагрузка страницы
}

function clearFavorites() {
    localStorage.removeItem('favorites');
    updateFavoritesCount();
    location.reload();
}
