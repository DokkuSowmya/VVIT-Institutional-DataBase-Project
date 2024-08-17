<!DOCTYPE html>
<html>
<head>
    <title>Upload File</title>
</head>
<body>
    <h1>Upload File</h1>
    <form method="post" action="upload" enctype="multipart/form-data">
        <input type="file" name="file" required>
        <button type="submit">Upload</button>
    </form>
    <%
        String message = (String) request.getAttribute("Message");
        if (message != null) {
    %>
    <p><%= message %></p>
    <%
        }
    %>
</body>
</html>
