<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.Product" %>
<%@ page import="com.example.dao.ProductDAO" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Дипломная работа</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<!-- HEADER -->
    <header>
        <div class="container">
            <div class="logo">
                <a href="index.jsp">72hrs</a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li class="dropdown">
                        <a href="catalog.jsp">Каталог</a>
                        <ul class="dropdown-menu">
                            <li><a href="phones.jsp">Смартфоны</a></li>
                            <li><a href="tablet.jsp">Планшеты</a></li>
                            <li><a href="laptop.jsp">Ноутбуки</a></li>
                            <li><a href="headphones.jsp">Наушники</a></li>
                            <li><a href="watches.jsp">Часы</a></li>
                        </ul>
                    </li>
                    <li><a href="sales.jsp">Акции</a></li>
                    <li><a href="service.jsp">Ремонт</a></li>
                    <li><a href="#contact">Контакты</a></li>
                </ul>
            </nav>
            <div class="icons">
                <div class="dropdown" id="favorites-dropdown">
                    <a href="favorites.jsp" class="icon">❤️ <span id="favorites-count" class="count hidden">(0)</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" id="clear-favorites">Очистить</a></li>
                    </ul>
                </div>
                <div class="dropdown" id="cart-dropdown">
                    <a href="cart.jsp" class="icon">🛒 <span id="cart-count" class="count hidden">(0)</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" id="clear-cart">Очистить</a></li>
                    </ul>
                </div>
                <a href="login.jsp" class="icon login">Войти</a>
            </div>
        </div>
    </header>

<!-- Баннер -->
    <div class="banner-slider">
        <div class="slides">
            <div class="slide"><img src="pic/banners/banner1.jpg" alt="Banner 1"></div>
            <div class="slide"><img src="pic/banners/banner2.jpg" alt="Banner 2"></div>
            <div class="slide"><img src="pic/banners/banner3.jpg" alt="Banner 3"></div>
        </div>
        <div class="navigation">
            <button class="prev">&#10094;</button>
            <button class="next">&#10095;</button>
        </div>
        <div class="pagination">
            <!-- Кружочки индикаторов будут сгенерированы здесь -->
        </div>
    </div>

<!-- КАТАЛОГ -->
    <div class="section-header">
        <h2>Новинки</h2>
    </div>
    <div class="center-block">
        <div class="catalog">
            <%
                ProductDAO productDAO = new ProductDAO();
                List<Product> productList = productDAO.getAllProducts();
                if (productList != null && !productList.isEmpty()) {
                    for (Product product : productList) {
            %>
            <div class="product" data-product-id="<%= product.getProductId() %>">
                <img src='<%= product.getImgUrl() %>' alt='<%= product.getProductName() %>'>
                <h3><%= product.getProductName() %></h3>
                <p class='price'><%= product.getPrice() %> руб.</p>
                <div class='product-actions'>
                    <button class='favorite'>Избранное</button>
                    <button class='add-to-cart'>В корзину</button>
                </div>
            </div>
            <%
                    }
                } else {
            %>
            <p>Нет доступных продуктов.</p>
            <%
                }
            %>
        </div>
    </div>

<hr>

<!-- Преимущества -->
    <div class="center-block">
        <div class="advantages-section">
            <div class="advantages">
                <div class="advantage">
                    <img src="pic/logos/delivery.png" alt="Доставка">
                    <h3>Доставка</h3>
                    <p>Быстрая и надежная доставка по всей стране.</p>
                </div>
                <div class="advantage">
                    <img src="pic/logos/workage.png" alt="Работаем с 2010 года">
                    <h3>Работаем с 2010 года</h3>
                    <p>Более 10 лет успешной работы и множество довольных клиентов.</p>
                </div>
                <div class="advantage">
                    <img src="pic/logos/original.png" alt="Только оригинальная продукция">
                    <h3>Только оригинальная продукция</h3>
                    <p>Мы предлагаем только качественные и оригинальные товары.</p>
                </div>
                <div class="advantage">
                    <img src="pic/logos/license.png" alt="Гарантия 1 год">
                    <h3>Гарантия 1 год</h3>
                    <p>Мы предоставляем годовую гарантию на всю продукцию.</p>
                </div>
            </div>
        </div>
    </div>

<hr>
    
<!-- ОТЗЫВЫ -->
    <div class="section-header">
        <h2>Отзывы о нашем магазине</h2>
    </div>

    <div class="review">
        <review-lab data-widgetid="664ddea9be97c1857b68d066"></review-lab>
        <script src="https://app.reviewlab.ru/widget/index-es2015.js" defer></script>
    </div>
 
<hr>
<!-- КАРТА --> 
    <div class="section-header">
        <h2>Адрес</h2>
    </div>

    <div class="center-block">
        <div class="location-info" id="contact">
            <div class="info-left">
                <h2>Наш адрес:</h2>
                <p>Московское шоссе 77</p>
                <h2>Режим работы:</h2>
                <p>Пн-Пт: 9:00 - 18:00</p>
                <p>Сб-Вс: 10:00 - 17:00</p>
                <h2>Телефон:</h2>
                <p>8(846)339-11-11</p>
                <h2>Email адрес:</h2>
                <p>psuti@mail.ru</p>
            </div>
            <div id="map" class="info-right">
                <iframe src="https://yandex.ru/map-widget/v1/?indoorLevel=1&ll=50.194014%2C53.225393&mode=search&ol=geo&ouri=ymapsbm1%3A%2F%2Fgeo%3Fdata%3DCgg1NzM3NTQ4MBI_0KDQvtGB0YHQuNGPLCDQodCw0LzQsNGA0LAsINCc0L7RgdC60L7QstGB0LrQvtC1INGI0L7RgdGB0LUsIDc3IgoNrMZIQhXO5lRC&z=17.09" width="100%"  height="100%" border-left="1" allowfullscreen="true" style="position:relative;"></iframe>
            </div>
        </div>
    </div>
    
<!-- Консультация -->
    <div class="consultation-container">
        <span class="consultation-text">Заказать консультацию</span>
        <div class="consultation-input-container">
            <input type="text" placeholder="Введите ваш телефон" class="consultation-input">
            <button class="consultation-button">Отправить</button>
        </div>
    </div>

<!-- FOOTER -->
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>
                    <ul>
                        <li><a href="catalog.jsp">Каталог</a></li>
                        <li><a href="sales.jsp">Акции</a></li>
                        <li><a href="service.jsp">Ремонт</a></li>
                        <li><a href="#contact">Контакты</a></li>
                    </ul>
                </h3>
            </div>
            <div class="footer-column">
                <h3>Информация</h3>
                <ul>
                    <li><a href="oferta.jsp">Оферта</a></li>
                    <li><a href="soglas.jsp">Пользовательское соглашение</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Помощь</h3>
                <ul>
                    <li><a href="warranty.jsp">Гарантия на товар</a></li>
                    <li><a href="payment.jsp">Условия оплаты</a></li>
                    <li><a href="delivery.jsp">Условия доставки</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Контакты и адрес</h3>
                <p>Адрес: Московское шоссе 77</p>
                <p>Телефон: 8(846)339-11-11</p>
                <p>Email: psuti@mail.ru</p>
                <ul class="social-icons">
                    <li><a href="#"><img src="pic/logos/telegram.png" alt="telegram"></a></li>
                    <li><a href="#"><img src="pic/logos/vk.png" alt="vk"></a></li>
                    <li><a href="#"><img src="pic/logos/instagram.png" alt="Instagram"></a></li>
                    <li><a href="#"><img src="pic/logos/whatsapp.png" alt="whatsapp"></a></li>
                </ul>
            </div>
        </div>
    </footer>

    <script src="scripts/add-cart.js"></script>
    <script src="scripts/add-favorite.js"></script>
    <script src="scripts/counter.js"></script>
    <script src="scripts/clear-storage.js"></script>
    <script src="scripts/swiper.js"></script>
    <script src="scripts/pagination-product.js"></script>
</body>
</html>
