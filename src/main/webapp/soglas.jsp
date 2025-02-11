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
        <h2>Пользовательское соглашение</h2>
    </div>

    <div class="center-block">
        <div class="site-info">
            <h3>1. Общие положения</h3>
            <p>1.1. Администрация сайта оставляет за собой право в любое время изменять, добавлять или удалять пункты настоящего Соглашения без уведомления Пользователя.</p>
            <p>1.2. Продолжение использования Сайта Пользователем означает принятие Соглашения и изменений, внесенных в настоящее Соглашение.</p>
            <p>1.3. Пользователь несет персональную ответственность за проверку настоящего Соглашения на наличие изменений в нем.</p>
            <h3>2. Определения терминов</h3>
            <p>2.1. Перечисленные ниже термины имеют для целей настоящего Соглашения следующее значение:</p>
            <p>2.1.1. Интернет-магазин – сайт, содержащий информацию о Товарах, Продавце, позволяющий осуществить выбор, заказ и (или) приобретение Товара.</p>
            <p>2.1.2. Администрация сайта Интернет-магазина – уполномоченные сотрудники на управления Сайтом, действующие от имени Данилов М.Д.</p>
            <p>2.1.3. Пользователь сайта Интернет-магазина (далее Пользователь) – лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.</p>
            <p>2.1.4. Содержание сайта Интернет-магазина (далее – Содержание) - охраняемые результаты интеллектуальной деятельности, включая тексты литературных произведений, их названия, предисловия, аннотации, статьи, иллюстрации, обложки, музыкальные произведения с текстом или без текста, графические, текстовые, фотографические, производные, составные и иные произведения, пользовательские интерфейсы, визуальные интерфейсы, названия товарных знаков, логотипы, базы данных, а также дизайн, структура, выбор, координация, внешний вид, общий стиль и расположение данного Содержания, входящего в состав Сайта и другие объекты интеллектуальной собственности все вместе и/или по отдельности, содержащиеся на сайте Интернет-магазина.</p>
            <h3>3. Предмет соглашения</h3>
            <p>3.1. Предметом настоящего Соглашения является предоставление Пользователю Интернет-магазина доступа к содержащимся на Сайте Товарам и оказываемым услугам.</p>
            <p>3.1.1. Интернет-магазин предоставляет Пользователю следующие виды услуг (сервисов):</p>
            <p>
                <ul>
                    <li>доступ к средствам поиска и навигации Интернет-магазина;</li>
                    <li>предоставление Пользователю возможности размещения отзывов;</li>
                    <li>доступ к информации о Товаре и к информации о приобретении Товара на платной основе;</li>
                    <li>иные виды услуг, реализуемые на страницах Интернет-магазина.</li>
                </ul>
            </p>
            <p>3.1.2. Под действие настоящего Соглашения подпадают все существующие (реально функционирующие) на данный момент услуги Интернет-магазина, а также любые их последующие модификации и появляющиеся в дальнейшем дополнительные услуги Интернет-магазина.</p>
            <p>3.2. Доступ к Интернет-магазину предоставляется на бесплатной основе.</p>
            <p>3.3. Настоящее Соглашение является публичной офертой. Получая доступ к Сайту Пользователь считается присоединившимся к настоящему Соглашению.</p>
            <p>3.4. Использование материалов и сервисов Сайта регулируется нормами действующего законодательства Российской Федерации</p>
            <h3>4. Права и обязанности сторон</h3>
            <p>4.1. Администрация сайта вправе:</p>
            <p>4.1.1. Изменять правила пользования Сайтом, а также изменять содержание данного Сайта. Изменения вступают в силу с момента публикации новой редакции Соглашения на Сайте.</p>
            <p>4.1.2. Ограничить доступ к Сайту в случае нарушения Пользователем условий настоящего Соглашения.</p>
            <p>4.2. Пользователь вправе:</p>
            <p>4.2.1. Получить доступ к использованию Сайта.</p>
            <p>4.2.2. Приобретать любые Товары, предлагаемые на Сайте.</p>
            <p>4.2.3. Задавать любые вопросы, относящиеся к услугам Интернет-магазина по реквизитам, которые находятся в разделе c контактами.</p>
            <p>4.2.4. Пользоваться Сайтом исключительно в целях и порядке, предусмотренных Соглашением и не запрещенных законодательством Российской Федерации.</p>
            <p>4.3. Пользователь Сайта обязуется:</p>
            <p>4.3.1. Предоставлять по запросу Администрации сайта дополнительную информацию, которая имеет непосредственное отношение к предоставляемым услугам данного Сайта.</p>
            <p>4.3.2. Соблюдать имущественные и неимущественные права авторов и иных правообладателей при использовании Сайта.</p>
            <p>4.3.3. Не предпринимать действий, которые могут рассматриваться как нарушающие нормальную работу Сайта.</p>
            <p>4.3.4. Не распространять с использованием Сайта любую конфиденциальную и охраняемую законодательством Российской Федерации информацию о физических либо юридических лицах.</p>
            <p>4.3.5. Избегать любых действий, в результате которых может быть нарушена конфиденциальность охраняемой законодательством Российской Федерации информации.</p>
            <p>4.3.6. Не использовать Сайт для распространения информации рекламного характера, иначе как с согласия Администрации сайта.</p>
            <p>4.3.7. Не использовать сервисы сайта Интернет-магазина с целью:</p>
            <p>4.3.7. 1. побуждения к совершению противоправных действий, а также содействия лицам, действия которых направлены на нарушение ограничений и запретов, действующих на территории Российской Федерации.</p>
            <p>4.3.7. 2. нарушения прав несовершеннолетних лиц и (или) причинение им вреда в любой форме.</p>
            <p>4.3.7. 3. ущемления прав меньшинств.</p>
            <p>4.3.7. 4. представления себя за другого человека или представителя организации и (или) сообщества без достаточных на то прав, в том числе за сотрудников данного Интернет-магазина.</p>
            <p>4.3.7. 5. введения в заблуждение относительно свойств и характеристик какого-либо Товара из каталога Интернет-магазина, размещенного на Сайте.</p>
            <p>4.3.7. 6. некорректного сравнения Товара, а также формирования негативного отношения к лицам, (не) пользующимся определенными Товарами, или осуждения таких лиц.</p>
            <p>4.4. Пользователю запрещается:</p>
            <p>4.4.1. Использовать любые устройства, программы, процедуры, алгоритмы и методы, автоматические устройства или эквивалентные ручные процессы для доступа, приобретения, копирования или отслеживания содержания Сайта данного Интернет-магазина;</p>
            <p>4.4.2. Нарушать надлежащее функционирование Сайта;</p>
            <p>4.4.3. Любым способом обходить навигационную структуру Сайта для получения или попытки получения любой информации, документов или материалов любыми средствами, которые специально не представлены сервисами данного Сайта;</p>
            <p>4.4.4. Несанкционированный доступ к функциям Сайта, любым другим системам или сетям, относящимся к данному Сайту, а также к любым услугам, предлагаемым на Сайте;</p>
            <p>4.4.5. Нарушать систему безопасности или аутентификации на Сайте или в любой сети, относящейся к Сайту.</p>
            <p>4.4.6. Использовать Сайт и его Содержание в любых целях, запрещенных законодательством Российской Федерации, а также подстрекать к любой незаконной деятельности или другой деятельности, нарушающей права интернет-магазина или других лиц.</p>
            <h3>5. Использование сайта интернет-магазина</h3>
            <p>5.1. Сайт и Содержание, входящее в состав Сайта, принадлежит и управляется Администрацией сайта.</p>
            <p>5.2. Содержание Сайта не может быть скопировано, опубликовано, воспроизведено, передано или распространено любым способом, а также размещено в глобальной сети «Интернет» без предварительного письменного согласия Администрации сайта.</p>
            <p>5.3. Содержание Сайта защищено авторским правом, законодательством о товарных знаках, а также другими правами, связанными с интеллектуальной собственностью, и законодательством о недобросовестной конкуренции.</p>
            <p>5.4. Приобретение Товара, предлагаемого на Сайте, может потребовать введения личных данных.</p>
            <p>5.5. Настоящее Соглашение распространяет свое действия на все дополнительные положения и условия о покупке Товара и оказанию услуг, предоставляемых на Сайте.</p>
            <p>5.6. Информация, размещаемая на Сайте не должна истолковываться как изменение настоящего Соглашения.</p>
            <p>5.7. Администрация сайта имеет право в любое время без уведомления Пользователя вносить изменения в перечень Товаров и услуг, предлагаемых на Сайте, и (или) в цены, применимые к таким Товарам по их реализации и (или) оказываемым услугам Интернет-магазином.</p>
            <h3>6. Ответственность</h3>
            <p>6.1. Любые убытки, которые Пользователь может понести в случае умышленного или неосторожного нарушения любого положения настоящего Соглашения, Администрацией сайта не возмещаются.</p>
            <p>6.2. Администрация сайта не несет ответственности за:</p>
            <p>6.2.1. Задержки или сбои в процессе совершения операции, возникшие вследствие непреодолимой силы, а также любого случая неполадок в телекоммуникационных, компьютерных, электрических и иных смежных системах.</p>
            <p>6.2.2. Действия систем переводов, банков, платежных систем и за задержки связанные с их работой.</p>
            <p>6.2.3. Надлежащее функционирование Сайта, в случае, если Пользователь не имеет необходимых технических средств для его использования, а также не несет никаких обязательств по обеспечению пользователей такими средствами.</p>
            <h3>7. Нарушение условий пользовательского соглашения</h3>
            <p>7.1. Администрация сайта вправе раскрыть любую собранную о Пользователе данного Сайта информацию, если раскрытие необходимо в связи с расследованием или жалобой в отношении неправомерного использования Сайта либо для установления (идентификации) Пользователя, который может нарушать или вмешиваться в права Администрации сайта или в права других Пользователей Сайта.</p>
            <p>7.2. Администрация сайта имеет право раскрыть любую информацию о Пользователе, которую посчитает необходимой для выполнения положений действующего законодательства или судебных решений, обеспечения выполнения условий настоящего Соглашения, защиты прав или безопасности название организации, Пользователей.</p>
            <p>7.3. Администрация сайта имеет право раскрыть информацию о Пользователе, если действующее законодательство Российской Федерации требует или разрешает такое раскрытие</p>
            <p>7.4. Администрация сайта вправе без предварительного уведомления Пользователя прекратить и (или) заблокировать доступ к Сайту, если Пользователь нарушил настоящее Соглашение или содержащиеся в иных документах условия пользования Сайтом, а также в случае прекращения действия Сайта либо по причине технической неполадки или проблемы.</p>
            <p>7.5. Администрация сайта не несет ответственности перед Пользователем или третьими лицами за прекращение доступа к Сайту в случае нарушения Пользователем любого положения настоящего Соглашения или иного документа, содержащего условия пользования Сайтом.</p>
            <h3>8. Разрешение споров</h3>
            <p>8.1. В случае возникновения любых разногласий или споров между Сторонами настоящего Соглашения обязательным условием до обращения в суд является предъявление претензии (письменного предложения о добровольном урегулировании спора).</p>
            <p>8.2. Получатель претензии в течение 30 календарных дней со дня ее получения, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.</p>
            <p>8.3. При невозможности разрешить спор в добровольном порядке любая из Сторон вправе обратиться в суд за защитой своих прав, которые предоставлены им действующим законодательством Российской Федерации.</p>
            <p>8.4. Любой иск в отношении условий использования Сайта должен быть предъявлен в течение срок после возникновения оснований для иска, за исключением защиты авторских прав на охраняемые в соответствии с законодательством материалы Сайта. При нарушении условий данного пункта любой иск или основания для иска погашаются исковой давностью.</p>
            <h3>9. Дополнительные условия</h3>
            <p>9.1. Администрация сайта не принимает встречные предложения от Пользователя относительно изменений настоящего Пользовательского соглашения.</p>
            <p>9.2. Отзывы Пользователя, размещенные на Сайте, не являются конфиденциальной информацией и могут быть использованы Администрацией сайта без ограничений.</p>
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
