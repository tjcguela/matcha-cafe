<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ActualMP.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/signup.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup-main-container">
        <div class="signup-subcontainer2">
        </div>
        <div class="signup-subcontainer">
            <h1>Sign Up</h1>
            <div class="signup-names-container">
                <div class="signup-names-subcontainer">
                    <p>Last name<asp:RequiredFieldValidator ID="RFVLName" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtLName"></asp:RequiredFieldValidator></p>
                    <p>Given name<asp:RequiredFieldValidator ID="RFVGName" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtGName"></asp:RequiredFieldValidator></p>
                </div>
                <div class="signup-names-subcontainer">
                    <asp:TextBox ID="txtLName" runat="server" CssClass="signup-textbox"></asp:TextBox>
                    <asp:TextBox ID="txtGName" runat="server" CssClass="signup-textbox"></asp:TextBox>
                </div>
            </div>
            <p>Email<asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="REVEmail" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="Invalid Email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@(gmail|mail|yahoo|mcl.edu)*\.(com|ph|net|org)*" ></asp:RegularExpressionValidator></p>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="signup-textbox"></asp:TextBox>
            <p>Password<asp:RequiredFieldValidator ID="RFVPass" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></p>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="signup-textbox" TextMode="Password"></asp:TextBox>
            <div class="terms-condi-container">
                <asp:CheckBox ID="termsCondi" runat="server" />
                <p>I have read the terms and conditions</p>
            </div>
            <asp:Label ID="termsValidator" runat="server" Text="Must read terms and conditions" Visible="false" Font-Size="X-Small" ForeColor="Red"></asp:Label>
            <asp:Button ID="btnSubmit" runat="server" Text="Create Account" CssClass="button" Width="50%" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
