<%--
**********************************************************
   Author      : Adriano Alves (aalves3)
   Date        : Apr.08.2015
   Course      : CS211E Spring of 2015
   File name   : sysinfo2.jsp
   File Needed : sysinfo.html
   Objective   : JSP program to give you some system
                 information 
**********************************************************   
--%>

 <%@ include file="sysinfo.html"%> 
 <%@page import="java.util.*"%>

<html>
    <head>
        <title>Showing Options</title>
    </head>
    <body>
        <font size="+2">
        <center>
        <%
           Enumeration e = request.getParameterNames();
           if(!e.hasMoreElements())
           {
        %>
              <font color="red" size="+3">
              <h2> PLEASE SELECT YOUR OPTION(S) </h2>
        <%
           }
           else
           {
               if(request.getParameter("option1") != null)
               {
              %>      
                  <h2>Java Version: <%= System.getProperty("java.version") %> </h2>
              <%
               }
               if(request.getParameter("option2") != null)
               {
              %>
                  <h2>Java Directory: <%= System.getProperty("java.home") %> </h2>
              <%
               }
               if(request.getParameter("option3") != null)
               {
              %>
                  <h2>operating system name : <%= System.getProperty("os.name") %> </h2>
              <%
               }
               if(request.getParameter("option4") != null)
               {
              %>
                  <h2>user name : <%= System.getProperty("user.name") %> </h2>
              <%
               }
               if(request.getParameter("option5") != null)
               {
              %>
                  <h2>User Home : <%= System.getProperty("user.name") %> </h2>
              <%
               }
               if(request.getParameter("option6") != null)
               {
              %>
                  <h2>Curent directory : <%= System.getProperty("user.dir") %> </h2>
              <%
               }
          }
         %>
    </body>
</html>
