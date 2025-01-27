<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ActualMP.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/home.css">
    <title>Home | Matcha, Matcha, Much! </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home-container">
        <div class="home-subcontainer-image"></div>
        <div class="home-subcontainer-text">
            <div class="home-innercontainer-text">
                <h2>Sweet, Yummy, Savoury</h2>
                <p>Our Iced Matcha Drinks are ready to cool off
                    the summer heat with their fruity explosions. Yum!</p>
                <asp:Button ID="btnOrder" runat="server" Text="Order Now" CssClass="button" OnClick="btnOrder_Click" />
            </div>
        </div>
    </div>

    <br />

    <div class="home-container">
        <div class="home-subcontainer-text">
            <div class="home-innercontainer-text">
                <h3>Sign Up Now</h3>
                <p>Come join our humble safe space and experience the relaxing joys of matcha and matcha matcha much more!</p>
                <asp:Button ID="btnRegister" runat="server" Text="Get Started" CssClass="button" OnClick="btnRegister_Click" />
            </div>
        </div>
        <div class="home-subcontainer-image2"></div>
    </div>

    <br />


</asp:Content>
