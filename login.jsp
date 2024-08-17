<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: url("college1.jpeg") no-repeat center center fixed;
    background-size: cover;
    height: 100vh;
    justify-content: center;
    align-items: center;
    font-size:10px;
  }

  .login-container {
    background: rgba(255, 255, 255, 0.8);
    padding: 10px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    text-align: center;
    max-width: 400px;
    width: 120%;
    position:absolute;
    left:550px;
    top:250px;
  }

  .login-container h2 {
    margin-bottom: 10px;
    font-size:20px;
  }

  
  input[type=text], input[type=password]{
    width:100%;
    padding:5px 20px;
    margin:8px 0;
   display:inline-block;
   border:2px solid #ccc;
   box-sizing:border-box;
   font-size:20px;
 }
 

  .login-btn {
    background: #007BFF;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
.container{
  padding:15px;
  font-size:15px;
}

  .login-btn:hover {
    background: #0056b3;
  }
#user1{
    position:absolute;
    top:60px;
    left:35px;
}
#password1{
  position:absolute;
  top:130px;
  left:35px;
}
</style>
</head>
<body>
<div class="login-container">
  <h2>Login Form</h2>
  <form action="LoginServlet" method=post>
    <div class="container">
      <label for="username" id="user1"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required><br><br>
      <label for="password" id="password1"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
    
    <button class="login-btn" type="submit">Login</button>
</div>
  </form>
</div>
</body>
</html>