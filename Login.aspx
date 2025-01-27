<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ActualMP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup-main-container">
        <div class="signup-subcontainer2">
            <asp:Image ID="imgLogin" runat="server" ImageUrl="~/Images/bg-login.png" />
        </div>
        <div class="signup-subcontainer">
            <h1>Log In</h1>
            <p>Email<asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator></p>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="signup-textbox"></asp:TextBox>
            <p>Password<asp:RequiredFieldValidator ID="RFVPassword" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></p>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="signup-textbox" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Log In" CssClass="button" Width="50%" OnClick="btnSubmit_Click" />
            <p>New Here? <asp:HyperLink ID="HPSignUp" runat="server" NavigateUrl="~/SignUp.aspx">Create Account</asp:HyperLink></p>
        </div>
    </div>
</asp:Content>
