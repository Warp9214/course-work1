
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Boolean authenticated = (Boolean) session.getAttribute("authenticated");
  if (authenticated != null && authenticated) {
    response.sendRedirect(request.getContextPath() + "/admin");
    return;
  }
%>
<!DOCTYPE html>
<html lang="uk">
<head>
  <meta charset="UTF-8">
  <title>Сторінка Входу</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
  <h1>Вхід до системи</h1>

  <form method="post" action="<%= request.getContextPath() %>/login">
    <label for="password">Введіть пароль:</label><br>
    <input type="password" name="password" id="password" required><br>
    <input type="submit" value="Увійти">
  </form>

  <% if (request.getAttribute("errorMessage") != null) { %>
  <div class="error-message">
    <%= request.getAttribute("errorMessage") %>
  </div>
  <% } %>

</div>
</body>
</html>
