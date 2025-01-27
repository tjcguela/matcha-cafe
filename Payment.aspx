<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ActualMP.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/payment.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="payment-maincontainer">
                <div class="payment-subcontainer">
                     <asp:DropDownList ID="DDPaymentMethod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDPaymentMethod_SelectedIndexChanged1" >
                        <asp:ListItem Selected="True">Pick Up</asp:ListItem>
                        <asp:ListItem>Delivery</asp:ListItem>
                    </asp:DropDownList>
                    <h1>Payment</h1>
                    <p>Full Name<asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="X-Small" ControlToValidate="custName"></asp:RequiredFieldValidator> </p>
                    <asp:TextBox ID="custName" CssClass="payment-textbox" runat="server"></asp:TextBox>

                     <p>Phone Number <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="X-Small" ControlToValidate="txtPhone"></asp:RequiredFieldValidator></p>
                    <asp:TextBox ID="txtPhone" CssClass="payment-textbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVPhonePH" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" Font-Size="X-Small" ControlToValidate="txtPhone" ValidationExpression="^(09|\+639)\d{9}$"></asp:RegularExpressionValidator>

                    <p id="city" runat="server" >City</p>
                    <asp:TextBox ID="txtCity" CssClass="payment-textbox" runat="server"></asp:TextBox>
                    <asp:Label ID="cityValidator" runat="server" Text="Must be from LAGUNA" ForeColor="Red" Font-Size="X-Small" Visible="false"></asp:Label>


                    <p id="delivery" runat="server" >Delivery Address</p>
                    <asp:TextBox ID="txtAdd" CssClass="payment-textbox-big" TextMode="MultiLine" runat="server" ></asp:TextBox>
                    <p id="zip" runat="server" >
                        Zip Code
                    </p>
                    <asp:TextBox ID="txtZipCode" CssClass="payment-textbox" runat="server" ></asp:TextBox>

                    <asp:Label ID="provValidator" runat="server" Text="No Branches Near You" ForeColor="Red" Font-Size="X-Small" Visible="false"></asp:Label>
                    <asp:Label ID="zipValidator" runat="server" Text="Must be between 4200 and 4300" ForeColor="Red" Font-Size="X-Small" Visible="false"></asp:Label>


                    <p>Card Number<asp:RequiredFieldValidator ID="RFVCred" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="X-Small" ControlToValidate="txtCred"></asp:RequiredFieldValidator> </p>
                    <asp:TextBox ID="txtCred" CssClass="payment-textbox" runat="server" MaxLength="16" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REVCred" runat="server" ErrorMessage="Invalid Input" ForeColor="Red" Font-Size="X-Small" ControlToValidate="txtCred" ValidationExpression="^4[0-9]{12}(?:[0-9]{3})?$"></asp:RegularExpressionValidator>

                    <p>CVV: <asp:RequiredFieldValidator ID="RFVCVV" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="X-Small" ControlToValidate="txtCVV"></asp:RequiredFieldValidator></p>
                    <asp:TextBox ID="txtCVV" CssClass="payment-textbox" runat="server" MaxLength="3"></asp:TextBox>
                    <asp:Label ID="CVVValidator" runat="server" Text="Invalid Input" ForeColor="Red" Font-Size="X-Small" Visible="false"></asp:Label>


                    <p>To Pay: <asp:Label ID="lblTotal" runat="server" Text="55.55"></asp:Label></p>
                    <asp:Button ID="brnPayNow" runat="server" Text="Pay Now" CssClass="button" OnClick="brnPayNow_Click" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
