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


<!-- Корзина -->
    <div class="section-header">
        <h2>Корзина</h2>
    </div>
    <div class="center-block">
        <div class="cart-container">
            <table id="cart-container">
                <thead>
                    <tr>
                        <th></th>
                        <th>Название</th>
                        <th>Количество</th>
                        <th>Итоговая сумма</th>
                        <th></th>
                    </tr>
                </thead>
               <tbody>
                     <!-- Товары будут добавлены здесь -->
                 </tbody>
            </table>
        </div>

        <div class="info-delivery-block" id="info-delivery-block" style="display: none;">
            <div class="customer-info">
                <h3>Информация о покупателе:</h3>
                <div class="input-group">
                    <label for="customer-name">Имя:</label>
                    <input type="text" id="customer-name" name="customer-name" placeholder="Введите ваше имя">
                </div>
                <div class="input-group">
                    <label for="customer-surname">Фамилия:</label>
                    <input type="text" id="customer-surname" name="customer-surname" placeholder="Введите вашу фамилию">
                </div>
                <div class="input-group">
                    <label for="customer-email">Email:</label>
                    <input type="email" id="customer-email" name="customer-email" placeholder="Введите ваш email">
                </div>
                <div class="input-group">
                    <label for="customer-phone">Телефон:</label>
                    <input type="tel" id="customer-phone" name="customer-phone" placeholder="Введите ваш телефон">
                </div>
            </div>
            <div class="delivery-options" id="delivery-options">
                <h3>Выберите способ доставки:</h3>
                <div class="radio-group">
                    <input type="radio" id="pickup" name="delivery" value="pickup" checked>
                    <label for="pickup">Самовывоз</label>
                </div>
                <div class="radio-group">
                    <input type="radio" id="cdek" name="delivery" value="cdek">
                    <label for="cdek">СДЭК</label>
                </div>
                <div class="radio-group">
                    <input type="radio" id="post" name="delivery" value="post">
                    <label for="post">Почта России</label>
                </div>
                <div id="address-container" class="address-container" style="display: none;">
                    <label for="address">Адрес доставки:</label>
                    <input type="text" id="address" name="address" placeholder="Введите ваш адрес">
                </div>
            </div>
        </div>
              
        <div class="total-container">
            <p>Итого: <span id="total-amount">0 руб.</span></p>
            <button class="checkout-button">Оформить заказ</button>
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

    
    <script src="scripts/cart.js"></script>
    <script src="scripts/counter.js"></script>
    <script src="scripts/clear-storage.js"></script>
    <script src="scripts/swiper.js"></script>
    <script src="scripts/pagination-product.js"></script>
</body>
</html>
