
<%@ page errorPage="error.jsp" %>  




<html>
<head>
<title> JSP Calculator </title>

<style>
            .content {
            border-style: groove;
            border-color: green;
            border-radius: 5px;
            margin-top: 100px;
            margin-bottom: 100px;
            margin-right: 150px;
            margin-left: 80px;
            padding-top: 50px;
            padding-right: 30px;
            padding-bottom: 50px;
            padding-left: 80px;
            text-align:center;
            
            }
            .report{
                text-align:center;
            }

            a:link, a:visited {
                background-color: green;
                color: white;
                padding: 14px 25px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
            }
            a:hover, a:active {
                background-color:#ffcc00 ;
            }
</style>
</head>

<body>
        <div class="content">


<% 
    String op=new String(request.getParameter("op"));
    String p1=new String(request.getParameter("p1"));
    String p2=new String(request.getParameter("p2"));
    
   
   Double tot=0.0;

        if ("add".equals(op))
        {
            tot = Double.parseDouble(p1) + Double.parseDouble(p2);
            
            if(tot.toString().endsWith(".0")){
                out.println("Addition of two numbers is: "+ tot.intValue());
            }
            else{
                out.println("Addition of two numbers is: "+tot);

            }
        }
        else  if ("sub".equals(op))
        {
            tot = Double.parseDouble(p1) - Double.parseDouble(p2);
            if(tot.toString().endsWith(".0")){
                out.println("Subtraction of two numbers is: "+tot.intValue());
            }
            else{
                out.println("Subtraction of two numbers is: "+tot);

            }
        }
         else  if ("mul".equals(op))
        {
            tot = Double.parseDouble(p1) * Double.parseDouble(p2);
           if(tot.toString().endsWith(".0")){
                out.println("Multiplication of two numbers is: " +tot.intValue());
            }
            else{
                out.println("Multiplication of two numbers is: " +tot);

            }
        }
        else  if ("div".equals(op))
        {
            if (p2.equals("0")){
                throw new ArithmeticException("Dividing a number by 0 is not allowed in this program");
            }
            tot = Double.parseDouble(p1)/ Double.parseDouble(p2);
            if(tot.toString().endsWith(".0")){
                out.println("Division of two numbers is " +tot.intValue());
            }
            else{
                out.println("Division of two numbers is " +tot);

            }
            
        }
         
        
        else{
            throw new NullPointerException("Op_code is not a valid one");
            //response.sendRedirect("report.html");

        }
 %> 
 
 
<div class="report">
<a href="report.jsp">Detailed report about the client</a>

</body>
</html>

