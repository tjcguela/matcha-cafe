<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="Logout-success.aspx.cs" Inherits="ActualMP.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/signup-success.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="s-success-main-container">
        <div class="s-success-subcontainer2">
            <asp:Image ID="imgDone" runat="server" ImageUrl="~/Images/pink-check.png" Height="50px" />
        </div>
        <div class="s-success-subcontainer">
            <h1>Successly Logged Out.</h1>
            <p>We hope you've had a great time. See you again soon!</p>
            <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="button" OnClick="btnClose_Click" />
        </div>
    </div>
</asp:Content>
