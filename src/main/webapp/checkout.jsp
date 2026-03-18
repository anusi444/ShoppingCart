<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<%
  List<String> cart = (List<String>) session.getAttribute("cart");

  int total = 0;
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Checkout</title>

  <style>

    body{
      font-family:Arial;
      background:#f4f4f4;
    }

    .container{
      width:65%;
      margin:auto;
      background:white;
      padding:25px;
      border-radius:10px;
      box-shadow:0px 3px 10px rgba(0,0,0,0.2);
    }

    h2{
      text-align:center;
    }

    table{
      width:100%;
      border-collapse:collapse;
      margin-top:20px;
    }

    th,td{
      padding:12px;
      border-bottom:1px solid #ddd;
    }

    th{
      background:deeppink;
      color:white;
    }

    .total{
      text-align:right;
      font-size:22px;
      margin-top:20px;
    }

    .message{
      text-align:center;
      margin-top:30px;
      font-size:20px;
      color:brown;
    }

  </style>

</head>

<body>

<div class="container">

  <h2>Order Summary</h2>

  <table>

    <tr>
      <th>Product</th>
      <th>Price</th>
    </tr>

    <%
      if(cart != null){

        for(String item : cart){

          String[] parts = item.split("-");

          String name = parts[0];
          int price = Integer.parseInt(parts[1].trim());

          total += price;
    %>

    <tr>
      <td><%= name %></td>
      <td>&#8377; <%= price %></td>
    </tr>

    <%
        }
      }
    %>

  </table>

  <div class="total">
    <strong>Total Bill: &#8377; <%= total %></strong>
  </div>

  <div class="message">
    Thank You For Shopping With Us!
  </div>

</div>

</body>
</html>