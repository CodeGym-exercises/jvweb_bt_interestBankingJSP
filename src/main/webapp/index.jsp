<%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/20/18
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <!-- Latest compiled and minified CSS -->
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
    <div class="wrapper">
      <form action="calculate.jsp" method="get">
        <div class="form-group">
          <label for="loans">Loans: </label><br>
          <input type="text" name="loans" id="loans" class="form-control">
        </div>
        <div class="form-group">
          <label for="rate">Rate: </label><br>
          <input type="text" name="rate" id="rate" class="form-control">
        </div>
        <div class="form-group">
          <label for="months">Months: </label><br>
          <input type="text" name="months" id="months" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </body>
</html>
