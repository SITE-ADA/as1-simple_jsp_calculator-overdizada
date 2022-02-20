<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

    .info{
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
    </style>

</head>
<body>
    <% 
        String  browserDetails = request.getHeader("User-Agent");
        String  userAgent = browserDetails;
        String  userLower = userAgent.toLowerCase();
    
        String os = "";
        String browser = "";

         if (userAgent.toLowerCase().indexOf("windows") >= 0 )
         {
             os = "Windows";
         } else if(userAgent.toLowerCase().indexOf("mac") >= 0)
         {
             os = "Mac";
         } else if(userAgent.toLowerCase().indexOf("x11") >= 0)
         {
             os = "Unix";
         } else if(userAgent.toLowerCase().indexOf("android") >= 0)
         {
             os = "Android";
         } else if(userAgent.toLowerCase().indexOf("iphone") >= 0)
         {
             os = "iPhone";
         }else{
             os = "Unknown OS";
         }
         
        if (userLower.contains("msie"))
        {
            String substring=userAgent.substring(userAgent.indexOf("MSIE")).split(";")[0];
            browser=substring.split(" ")[0].replace("MSIE", "IE")+" version "+substring.split(" ")[1];
        } else if (userLower.contains("safari") && userLower.contains("version"))
        {
            browser=(userAgent.substring(userAgent.indexOf("Safari")).split(" ")[0]).split("/")[0]+" version "+(userAgent.substring(userAgent.indexOf("Version")).split(" ")[0]).split("/")[1];
        } else if ( userLower.contains("opr") || userLower.contains("opera"))
        {
            if(userLower.contains("opera"))
                browser=(userAgent.substring(userAgent.indexOf("Opera")).split(" ")[0]).split("/")[0]+" version "+(userAgent.substring(userAgent.indexOf("Version")).split(" ")[0]).split("/")[1];
            else if(userLower.contains("opr"))
                browser=((userAgent.substring(userAgent.indexOf("OPR")).split(" ")[0]).replace("/", " version ")).replace("OPR", "Opera");
        } else if (userLower.contains("chrome"))
        {
            browser=(userAgent.substring(userAgent.indexOf("Chrome")).split(" ")[0]).replace("/", " version ");
        } else if ((userLower.indexOf("mozilla/7.0") > -1) || (userLower.indexOf("netscape6") != -1)  || (userLower.indexOf("mozilla/4.7") != -1) || (userLower.indexOf("mozilla/4.78") != -1) || (userLower.indexOf("mozilla/4.08") != -1) || (userLower.indexOf("mozilla/3") != -1) )
        {
            browser = "Netscape-?";         
        } else if (userLower.contains("firefox"))
        {
            browser=(userAgent.substring(userAgent.indexOf("Firefox")).split(" ")[0]).replace("/", " version ");
        } else if(userLower.contains("rv"))
        {
            browser="Internet Explorer version " + userLower.substring(userLower.indexOf("rv") + 3, userLower.indexOf(")"));
        } else
        {
            browser = "Unknown Browser";
        }
    
    %>
    <h2 style="text-align:center;" >"User Report"</h2>
    <p class="info">You are accesssing to the website with <%=browser%>, on <%=os%></p>
    <%
    
    %>

    
</body>
</html>