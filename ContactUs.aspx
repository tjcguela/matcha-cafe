<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ActualMP.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/contactus.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-maincontainer">
        <!-- First Container -->
        <div class="contact-subcontainer">
            <h1>Contact Us</h1>
            <div class="contact-textbox-header">
                <p>Full Name</p>
            </div>
            <asp:TextBox ID="contactName" CssClass="contact-textbox" runat="server"></asp:TextBox>
            <div class="contact-textbox-header">
                <p>Email</p>
            </div>
            <asp:TextBox ID="contactEmail" CssClass="contact-textbox" runat="server" TextMode="Email"></asp:TextBox>
            <div class="contact-textbox-header">
                <p>Message</p>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="comments"></asp:RequiredFieldValidator>
            </div>
            <asp:TextBox ID="comments" CssClass="contact-textbox-big" runat="server" TextMode="MultiLine" Text="Enter Message Here..."></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Contact Us" OnClick="Button1_Click" />
        </div>

        <!-- Second Container -->
        <div class="contact-subcontainer2">
        </div>
    </div>
</asp:Content>
