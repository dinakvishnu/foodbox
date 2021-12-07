<%@page import="com.db.utils.DbConnection"%>
<%@ page import ="java.sql.*"
         %>
<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    Connection con = DbConnection.init();
    Statement st = con.createStatement();
    ResultSet rs;

    rs = st.executeQuery("select * from members where uname='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("success.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Box</title> 
        <link rel="stylesheet" href="" type="text/css">
    </head>

    <style>
        .dfHgt {
            color: #212121;
            text-align:center;
        }
    </style>
    <div class="w3-container w3-center ">
        <div class="w3-xxlarge"> Food Box</div>
    </div>
    <p class="dfHgt">
        !<br>
        <a href="index.jsp">click here</a>
        <script>setTimeout(function () {
                window.location.href = "index.jsp"
            }, 5000);</script>
    </p>
     <table  class="w3-table " style="background-color:#14FFFF">
        <tr>
            <td><img src="https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/2/28/1/FNM_040112-Copy-That-002_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382541346030.jpeg" class="rounded" style="width:100%" height=250 width=400></td>
            <td><img src="https://res.cloudinary.com/purnesh/image/upload/f_auto/v1568979417/chicago-pizzaaaaa.jpg"class="rounded" style="width:100%" height=250 width=400></td>
            <td><img src="https://image.shutterstock.com/z/stock-photo-stock-image-of-very-cheesy-pizza-slice-pizza-is-a-savory-dish-of-italian-origin-consisting-of-a-1575872611.jpg.jpeg" class="rounded"style="width:100%" height=250 width=400></td>
        </tr>
        <tr><td style="text-align:center">BBQ Chicken</td><td style="text-align:center">Bigmess</td><td style="text-align:center">Chesey</td></tr>

        <tr>
            <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbggRaU8xSf8JEAgODwJ8oTOm_RSvGjf4HaQ&usqp=CAU" class="rounded-circle"style="width:100%" height=250 width=400></td>
            <td><img src="https://bigoven-res.cloudinary.com/image/upload/t_recipe-1280/veggie-deluxe-homemade-pizza.jpg" class="rounded-circle"style="width:100%" height=250 width=400></td>
            <td><img src="https://us2guntur.com/images//10024img/goldendelight_B_260216.jpg" class="rounded-circle"style="width:100%" height=250 width=400></td>
        </tr>
        <tr><td style="text-align:center">Chicken</td><td style="text-align:center">Delux Veggie</td><td style="text-align:center">Golden Delight</td></tr>

        <tr>
            <td><img src="https://veenaazmanov.com/wp-content/uploads/2020/04/Pizza-Margherita14-500x500.jpg"class="rounded" style="width:100%" height=250 width=400></td>
            <td><img src="https://www.jaindairy.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-29-at-20.05.34-6.jpeg"class="rounded" style="width:100%" height=250 width=400></td>
            <td><img src="https://cdn.shopify.com/s/files/1/0717/6497/products/kalamata-olive-pizza-636595.jpg?v=1602277219"class="rounded" style="width:100%" height=250 width=400></td>
        </tr>
        <tr><td style="text-align:center">Margharita</td><td style="text-align:center">Mexican</td><td style="text-align:center">Olive</td></tr>

        <tr>
            <td><img src="https://foodoncall.co.in/wp-content/uploads/2017/10/chatpata-paneer-pizza.jpg"class="rounded-circle" style="width:100%" height=250 width=400></td>
            <td><img src="https://www.kitchenathoskins.com/wp-content/uploads/2018/08/leftover-pasta-pizza-9yum.jpg"class="rounded-circle" style="width:100%" height=250 width=400></td>
            <td><img src="https://cravinghomecooked.com/wp-content/uploads/2020/04/pepperoni-pizza-pasta-1-2a.jpg"class="rounded-circle" style="width:100%" height=250 width=400></td>
        </tr>
        <tr><td style="text-align:center">Paneer</td><td style="text-align:center">Pastha</td><td style="text-align:center">Pepperoni</td></tr>

        <tr>
            <td><img src="https://www.kitchenkonfidence.com/wp-content/uploads/2019/04/Prosciutto-and-Arugula-Pizza.jpg"class="rounded" style="width:100%" height=250 width=400></td>
            <td><img src="https://data.thefeedfeed.com/recommended/post_4275172.jpeg"class="rounded" style="width:100%" height=250 width=400></td>
            <td><img src="https://www.whatdadcooked.com/wp-content/uploads/2020/10/TS_pizza-0253-5.jpg"class="rounded" style="width:100%" height=250 width=400></td>
        </tr>
        <tr><td style="text-align:center">Proscuitto</td><td style="text-align:center">Sandwich</td><td style="text-align:center">Sweetcorn/td></tr>
    </table>

    <%
        }
    %>