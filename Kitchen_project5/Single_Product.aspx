<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Single_Product.aspx.cs" Inherits="Kitchen_project5.Single_Product" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <link rel="stylesheet" href="Single_Product_CSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cooking Jug" CssClass="title"></asp:Label>
            <br />
            <div id="flex" runat="server">
                <div class="div_img">
                    <asp:Image ID="product_img" runat="server"  ImageUrl="~\Images_testing\OIP (5).jpg"  CssClass="pro_img"/>
                </div>
                <div class="desc_div">
                    <asp:Label ID="description" runat="server" Text="Cooking pot in the shape of a jug <span style='font-size:19px; padding-top:5px'> <br/>black in color<br/> capacity: 5 liters <br/> granite type </span>" CssClass="desc"></asp:Label>
                    <br />
                    <div class="pab">
                    <asp:Label ID="price" runat="server" Text="100 JD" CssClass="price"></asp:Label>
                    <div class="counter">
                        <asp:Button ID="minus" runat="server" Text="-" CssClass="IncaDec" OnClick="minus_Click" />
                        <asp:Label ID="quan" runat="server" Text="1"></asp:Label>
                        <asp:Button ID="plus" runat="server" Text="+" CssClass="IncaDec" OnClick="plus_Click" />
                    </div></div>
                   </div>
                 <br /><br />
                <asp:Button ID="addtocart" runat="server" Text="Add To Cart" CssClass="Add" OnClick="addtocart_Click" />
                
            </div>
            <br /><br /><br />
            <asp:TextBox ID="add_comment" runat="server" CssClass="add_comme"></asp:TextBox>
            <asp:Button ID="post" runat="server" Text="Post" CssClass="post" OnClick="post_Click" />
            <br />
                 
           <%-- <div class="commented">--%>
            <asp:Label ID="comment" runat="server" Text="" style="margin-top:45px;
    width: 40%;
    height: 40px;
    background-color: #E6E6E6;
    border-radius: 17px;
    border: 1px solid #E6E6E6;
    color: #2B3467;
    margin-left: 25%;
    font-family: 'Times New Roman';
    font-style: italic;
    font-size: 20px;
    padding-left:10px;
    padding-top:2px;"></asp:Label>
                <%--</div>--%>
        </div>
    </form>
</body>
</html>
