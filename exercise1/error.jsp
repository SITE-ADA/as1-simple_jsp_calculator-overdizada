<%@ page isErrorPage="true" %>  
  
<html>
<head>
<title>Error Page</title>
<style>
.container{
    border-style: groove;
            border-color: red;
            border-radius: 5px;
            margin-top: 100px;
            margin-bottom: 100px;
            margin-right: 150px;
            margin-left: 80px;
            padding-top: 50px;
            padding-right: 30px;
            padding-bottom: 50px;
            padding-left: 80px;
}
.center{
    text-align:center;
    
}

</style>
</head>

<body>
<div class="container">
<h3 class="center">Sorry an exception occured!</h3>  
<p class="center">Exception is: ${pageContext.exception} </p>
<a href="index.html" class="error">
</div>
</body>
</html>

  
