<%@ page errorPage="error.jsp" %>  



<html>
<head>
    <title>Calculator</title>
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

<% 
    String op=new String(request.getParameter("op"));
    String p1=new String(request.getParameter("p1"));
    String p2=new String(request.getParameter("p2"));
    
   
   Double tot=0.0;

        if ("add".equals(op))
        {
            tot = Double.parseDouble(p1) + Double.parseDouble(p2);
            
            if(tot.toString().endsWith(".0")){
                out.println(tot.intValue());
            }
            else{
                out.println(tot);

            }
        }
        else  if ("sub".equals(op))
        {
            tot = Double.parseDouble(p1) - Double.parseDouble(p2);
            if(tot.toString().endsWith(".0")){
                out.println(tot.intValue());
            }
            else{
                out.println(tot);

            }
        }
         else  if ("mul".equals(op))
        {
            tot = Double.parseDouble(p1) * Double.parseDouble(p2);
           if(tot.toString().endsWith(".0")){
                out.println(tot.intValue());
            }
            else{
                out.println(tot);

            }
        }
        else  if ("div".equals(op))
        {
            if (p2.equals("0")){
                throw new ArithmeticException("dividing a number by 0 is not allowed in this program");
            }
            tot = Double.parseDouble(p1)/ Double.parseDouble(p2);
            if(tot.toString().endsWith(".0")){
                out.println(tot.intValue());
            }
            else{
                out.println(tot);

            }
            
        }
         
        
        else{
            throw new NullPointerException("Op_code is not a valid one");
            //response.sendRedirect("report.html");

        }
 %> 

 
 <div class="container">
<h3 class="center">Result: <% if(tot.toString().endsWith(".0")){
                out.println(tot.intValue());
            }
            else{
                out.println(tot);} %>  
</h3>
<a href="report.jsp">Detailed report about the client</a>
</body>
</html>

