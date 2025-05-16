<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Головна Сторінка</title>
    <link rel="stylesheet" href="styles.css">

</head>
<body>
<div class="container">
    <div class="top-links">
    <a href="student" class="top-link">Студентська Панель</a>
    <a href="${pageContext.request.contextPath}/login" class="top-link">Увійти в панель деканату</a>
    </div>

    <h1  class="hh">Вас вітає додаток "Списки груп"</h1>



    <div class="welcome-section">
        <h2>Оновлення</h2>
        <p>Зустрічайте новий веб-застосунок для студентів! Забудьте про хаос і зайві пошуки — тепер усе необхідне під рукою.</p>
    </div>

    <div class="welcome-section">
        <h2>Новини</h2>
        <p>Поки відкриття веб-застосунку єдина наша новина але скоро це зміниться :)</p>
    </div>

    <div class="reviews-section">
        <h2>Відгуки студентів</h2>
        <div class="review">
            <p><strong>Пилип Лук'янець</strong>: "Неймовірний веб-застосунок, все дуже зручно!"</p>
        </div>
        <div class="review">
            <p><strong>Олександр Яковишин</strong>: "Задоволений функціоналом, хоча іноді зустрічаються невеликі збої."</p>
        </div>
        <div class="review">
            <p><strong>Кий Мацука</strong>: "Все швидко та ефективно! Система ідеальна для академічних потреб."</p>
        </div>
    </div>
</div>
</body>
</html>
