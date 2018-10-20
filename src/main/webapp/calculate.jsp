<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/20/18
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <style>
        .wrapper{
            width: 230px;
            margin: 20px auto;
        }
    </style>
</head>
<body>
    <%!  NumberFormat numberFormat = new DecimalFormat("0.00");
        double loans = 0;
        double rate = 0;
        double months = 0;

        double result = 0;
    %>

    <div class="wrapper">
        <%

            boolean isLoansEqualsNull = request.getParameter("loans")==""?true:false;
            boolean isRatesEqualsNull = request.getParameter("rate")==""?true:false;
            boolean isMonthsEqualsNull = request.getParameter("months")==""?true:false;

            if(isLoansEqualsNull||isRatesEqualsNull||isMonthsEqualsNull){
                out.print("<h3>Can't found result, please try again later</h3>");
            }else{
                loans = Double.parseDouble(request.getParameter("loans"));
                rate = Double.parseDouble(request.getParameter("rate"));
                months =  Double.parseDouble(request.getParameter("months"));
                result = Double.parseDouble(numberFormat.format(loans+(loans*rate/100*months)));

                out.print("<h3>Loans: </h3>\n" + loans+
                        " <h3>Rate: </h3>\n" + rate +
                        " <h3>Months: </h3>" + months+
                        "<h3><strong>Result: "+result+"</strong></h3>");
            }

        %>
        <form action="index.jsp" method="get">
            <button type="submit" class="btn btn-primary">Go back</button>
        </form>
    </div>
</body>
</html>
