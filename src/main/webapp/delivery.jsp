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
                    <li><a href="index.jsp">Контакты</a></li>
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


<!-- КАТАЛОГ -->
    <div class="section-header">
        <h2>Условия доставки</h2>
    </div>

    <div class="center-block">
        <div class="site-info">
            <h2>Доставка интернет-магазина «72hrs»</h2>
            <p>Наша позиция в отношении клиентов построена таким образом, чтобы обеспечить максимальный комфорт общения с нашей компанией. Поэтому мы осуществляем доставку товара максимум в течение всего 1,5 часа с момента оформления заказа!</p>
            <p>Цены:</p>
            <p>
                <ul>
                    <li>Самовывоз - бесплатно.</li>
                    <li>Доставка в пределах Самары при заказе на сумму от 3000 рублей - бесплатно!</li>
                    <li>До 3000 рублей - стоимость доставки 300 рублей в черте города и 450 рублей отдаленные районы</li>
                    <li>Доставка товаров любой стоимости в отдаленные районы Самары рассчитывается отдельно. Уточнить об отдаленности района и стоимости доставки можно у менеджера.</li>
                    <li>В другие регионы России доставка рассчитывается по тарифам транспортной компании СДЭК и почта России.</li>
                </ul>
            </p>
            <p>Просто сделайте заказ на сайте и наш менеджер свяжется с вами для уточнения деталей!</p>
            <p>Телефон: 8(846)339-11-11</p>      
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


    <script src="scripts/counter.js"></script>
    <script src="scripts/clear-storage.js"></script>
    <script src="scripts/swiper.js"></script>
    <script src="scripts/pagination-product.js"></script>
</body>
</html>
