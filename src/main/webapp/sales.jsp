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


<!-- Акции -->
    <div class="section-header">
        <h2>Акции</h2>
    </div>

    <div class="center-block">
        <div class="promo-section">
            <div class="promo-cards">
                <div class="promo-card">
                    <h3>Оставляй отзывы и получи до 1500 рублей на следующие покупки!</h3>
                    <p>Будем очень рады, если вы оставите свой отзыв, сделаете фото, отметите наши плюсы и минусы и напишите пожелания. Мы стараемся ради вас, так что нам важна обратная связь!</p>
                    <p>К тому же нам приходится конкурировать с крупными сетевыми магазинами, у которых много тысяч отзывов. Поэтому выложите отзыв на все представленные ниже платформы и расскажите о нас своим друзьям. Таким образом мы сэкономим немного денег на рекламе и сможем и дальше поддерживать выгодные цены.</p>
                    <p>В свою очередь, мы не останемся в долгу! Мы дадим по 250 рублей за отзыв на каждой из платформ, которыми можно оплатить до 100% от суммы следующей покупки.</p>
                </div>
                <div class="promo-card">
                    <h3>Cними видеообзор на YouTube и получи 1000 рублей!</h3>
                    <p>Ваш опыт покупок может быть бесценным для других покупателей. Поделитесь своим мнением о товаре, купленном в магазине 72hrs, снимите видеообзор и разместите его на YouTube. За это вы не только поможете другим сделать правильный выбор, но и получите 1000 рублей на свои следующие покупки в нашем магазине.</p>
                </div>
                <div class="promo-card">
                    <h3>20% скидка на аксессуары при покупке телефона</h3>
                    <p>При покупке телефона вы можете приобрести все необходимые аксессуары с выгодной скидкой. Скидка 20% распространяется на чехлы, пленку/стекло и адаптер</p>
                </div>
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


    <script src="scripts/counter.js"></script>
    <script src="scripts/clear-storage.js"></script>
    <script src="swiper.js"></script>
    <script src="scripts/pagination-product.js"></script>
</body>
</html>
