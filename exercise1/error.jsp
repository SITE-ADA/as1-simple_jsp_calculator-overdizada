<%@ page isErrorPage="true" %>  
  
<html>
<head>
<title>Error Page</title>
<style>
.container{
    border:3px dashed gray;
    padding:30px;
    margin-top:30px;
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
</div>
</body>
</html>

  
