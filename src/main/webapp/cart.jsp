<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<%
  request.setCharacterEncoding("UTF-8");

  String[] selected = request.getParameterValues("product");

  List<String> cart = (List<String>) session.getAttribute("cart");

  if(cart == null){
    cart = new ArrayList<>();
  }

  if(selected != null){
    for(String p : selected){
      cart.add(p);
    }
  }

  session.setAttribute("cart", cart);
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Your Cart</title>

  <style>

    body{
      font-family:Arial;
      background:#f4f4f4;
    }

    .container{
      width:60%;
      margin:auto;
      background:white;
      padding:25px;
      border-radius:10px;
      box-shadow:0px 2px 10px rgba(0,0,0,0.2);
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
      background:#007bff;
      color:white;
    }

    .total{
      text-align:right;
      font-size:18px;
      margin-top:15px;
    }

    .btn{
      display:inline-block;
      margin-top:20px;
      padding:10px 18px;
      background:#007bff;
      color:white;
      text-decoration:none;
      border-radius:5px;
    }

    .btn:hover{
      background:#0056b3;
    }

  </style>

</head>

<body>

<div class="container">

  <h2>Your Shopping Cart</h2>

  <table>

    <tr>
      <th>Product</th>
      <th>Price</th>
    </tr>

    <%
      int total = 0;

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
    %>

  </table>

  <div class="total">
    <strong>Total: &#8377; <%= total %></strong>
  </div>

  <a class="btn" href="products.jsp">Add More Products</a>
  <a class="btn" href="checkout.jsp">Proceed to Checkout</a>

</div>

</body>
</html>