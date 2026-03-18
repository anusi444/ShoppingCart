<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Online Shopping Store</title>
    <meta charset="UTF-8">

    <style>

        body{
            font-family:Arial;
            background:#f4f4f4;
        }

        h1{
            text-align:center;
        }

        .section-title{
            margin-left:40px;
            margin-top:30px;
        }

        .container{
            display:flex;
            flex-wrap:wrap;
            justify-content:center;
        }

        .product{
            width:220px;
            border:1px solid #ccc;
            background:white;
            margin:15px;
            padding:15px;
            text-align:center;
            border-radius:10px;
            box-shadow:0px 2px 8px rgba(0,0,0,0.1);
        }

        .price{
            color:green;
            font-weight:bold;
        }

        .submit{
            display:block;
            margin:30px auto;
            padding:10px 25px;
        }

    </style>

</head>

<body>

<h1>Online Shopping Store</h1>

<form action="cart.jsp" method="post">

    <!-- MOBILE SECTION -->

    <h2 class="section-title">📱 Mobile Phones</h2>

    <div class="container">

        <div class="product">
            <h3>Samsung Galaxy S23</h3>
            <p>Brand: Samsung</p>
            <p class="price">&#8377;70000</p>
            <input type="checkbox" name="product" value="Samsung Galaxy S23 - 70000"> Add to Cart
        </div>

        <div class="product">
            <h3>Apple iPhone 15</h3>
            <p>Brand: Apple</p>
            <p class="price">&#8377;80000</p>
            <input type="checkbox" name="product" value="Apple iPhone 15 - 80000"> Add to Cart
        </div>

        <div class="product">
            <h3>OnePlus 11</h3>
            <p>Brand: OnePlus</p>
            <p class="price">&#8377;60000</p>
            <input type="checkbox" name="product" value="OnePlus 11 - 60000"> Add to Cart
        </div>

    </div>

    <!-- LAPTOP SECTION -->

    <h2 class="section-title">💻 Laptops</h2>

    <div class="container">

        <div class="product">
            <h3>HP Pavilion Laptop</h3>
            <p>Brand: HP</p>
            <p class="price">&#8377;65000</p>
            <input type="checkbox" name="product" value="HP Pavilion - 65000"> Add to Cart
        </div>

        <div class="product">
            <h3>Dell Inspiron</h3>
            <p>Brand: Dell</p>
            <p class="price">&#8377;62000</p>
            <input type="checkbox" name="product" value="Dell Inspiron - 62000"> Add to Cart
        </div>

        <div class="product">
            <h3>Apple MacBook Air</h3>
            <p>Brand: Apple</p>
            <p class="price">&#8377;95000</p>
            <input type="checkbox" name="product" value="MacBook Air - 95000"> Add to Cart
        </div>

    </div>

    <!-- ACCESSORIES SECTION -->

    <h2 class="section-title">🎧 Accessories</h2>

    <div class="container">

        <div class="product">
            <h3>Sony WH1000XM5</h3>
            <p>Brand: Sony</p>
            <p class="price">&#8377;25000</p>
            <input type="checkbox" name="product" value="Sony WH1000XM5 - 25000"> Add to Cart
        </div>

        <div class="product">
            <h3>JBL Tune 760</h3>
            <p>Brand: JBL</p>
            <p class="price">&#8377;7000</p>
            <input type="checkbox" name="product" value="JBL Tune 760 - 7000"> Add to Cart
        </div>

        <div class="product">
            <h3>Boat Rockerz</h3>
            <p>Brand: Boat</p>
            <p class="price">&#8377;2500</p>
            <input type="checkbox" name="product" value="Boat Rockerz - 2500"> Add to Cart
        </div>

    </div>

    <input type="submit" value="Add Selected Items to Cart" class="submit">

</form>

</body>
</html>