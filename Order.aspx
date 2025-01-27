<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ActualMP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <link rel="stylesheet" href="css/order.css">
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 2px;
            font-family: "Signika Negative", sans-serif;
            font-optical-sizing: auto;
            font-weight: 700;
            font-style: normal;
            font-size: 10px;
            border-radius: 20px;
            padding: 5px 10px;
            color: #FDE9EA;
            background-color: #588061;
            margin-top: 15px;
            align-self: flex-end;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class ="menu-maincontainer">
      <h1> Menu</h1>
      <p> Hot Drinks</p>
      <div class='parent'>
          <div class='child'><asp:Image class="images" ID="Image1" runat="server" ImageUrl="~/Images/menupics/americano.jpg" />
              
              Hot Brewed Coffee
             
              <p2>Swing by and warm up while enjoying any of our three roasts brewed daily.</p2><asp:DropDownList ID="hbcSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="170">Small P170</asp:ListItem>
                  <asp:ListItem Value="180">Medium P180</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
              </asp:DropDownList>
              Qnt:<asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="*" MaximumValue="20" MinimumValue="0" ControlToValidate="hbcQty" Type="Integer"></asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="hbcQty" runat="server" Width="103px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
              Price:<asp:TextBox ID="hbcPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>
          </div>
        <div class='child'>
            <asp:Image class="images" ID="Image2" runat="server" ImageUrl="~/Images/menupics/espresso.jpg" />
            
            Espresso
            
            <p2>Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.</p2>
              <asp:DropDownList ID="espSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="170">Small P170</asp:ListItem>
                  <asp:ListItem Value="180">Medium P180</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
              </asp:DropDownList>
              Qnt:<asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="*"  MaximumValue="20" MinimumValue="0" ControlToValidate="espQty" Type="Integer"></asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="espQty" runat="server" Width="103px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
              Price:<asp:TextBox ID="espPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>

        </div>
         <div class='child'>
             <asp:Image class="images" ID="Image3" runat="server" ImageUrl="~/Images/menupics/Hot.jpeg" />
             
             Signature Hot Chocolate
             
             <p2>Steamed milk and mocha sauce topped with sweetened whipped cream and a chocolate-flavored drizzle. A timeless classic made to sweeten your spirits.</p2>
              <asp:DropDownList ID="shcSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="170">Small P170</asp:ListItem>
                  <asp:ListItem Value="180">Medium P180</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
              </asp:DropDownList>
              Qnt:<asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="*" MaximumValue="20" MinimumValue="0" ControlToValidate="shcQty" Type="Integer"></asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="shcQty" runat="server" Width="103px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
              Price:<asp:TextBox ID="shcPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>
             </div>
      </div>
      <p>Cold Drinks</p>
      <div class='parent'>
            <div class='child'>
                <asp:Image class="images" ID="Image4" runat="server" ImageUrl="~/Images/menupics/iced americano.jpg" />
                
                Iced Americano
                  
                  <p2>Espresso shots are topped with water to produce a light layer of crema, then served over ice. The result is this wonderfully rich cup with depth and nuance.</p2>
                <asp:DropDownList ID="icedAmericanoSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="170">Small P170</asp:ListItem>
                  <asp:ListItem Value="180">Medium P180</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
              </asp:DropDownList>
                Qnt:<asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="*"  MaximumValue="20" MinimumValue="0" ControlToValidate="icedAmericanoQty" Type="Integer"></asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="icedAmericanoQty" runat="server" Width="103px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
              
                Price:<asp:TextBox ID="icedAmericanoPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>
            </div>
            <div class='child'>
                <asp:Image class="images" ID="Image5" runat="server" ImageUrl="~/Images/menupics/matcha.jpg" />
                
                Iced Matcha
                 
                  <p2>Smooth and creamy matcha is lightly sweetened and served with milk and ice.</p2>
              <asp:DropDownList ID="icedMatchaSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="170">Small P170</asp:ListItem>
                  <asp:ListItem Value="180">Medium P180</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
              </asp:DropDownList>
                Qnt:<asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="*" MaximumValue="20" MinimumValue="0" ControlToValidate="icedMatchaQty" Type="Integer"></asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="icedMatchaQty" runat="server" Width="103px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
              
                Price:<asp:TextBox ID="icedMatchaPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>

                </div>
             <div class='child'>
                 <asp:Image class="images" ID="Image6" runat="server" ImageUrl="~/Images/menupics/iced.jpg" />
                 
                 Signature Iced Chocolate
                 
                 
                  <p2>Cocoas and fresh milk served on ice with whipped cream and chocolate powder.</p2>
                 <asp:DropDownList ID="icedChocoSize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="170">Small P170</asp:ListItem>
                  <asp:ListItem Value="180">Medium P180</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
              </asp:DropDownList>
                 Qnt:<asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="*" MaximumValue="20" MinimumValue="0" ControlToValidate="icedChocoQty"></asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="icedChocoQty" runat="server" Width="103px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
              
                 Price:<asp:TextBox ID="icedChocoPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>

             </div>
          
      </div>
      <p>Food</p>
      <div class='parent'>
            <div class='child'> 
                <asp:Image class="images" ID="Image7" runat="server" ImageUrl="~/Images/menupics/croissant.jpg" />
                
                French Butter Croissant
                
                <p2>Classic butter croissant with soft, flaky layers and a golden-brown crust.</p2>
                <asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                  <asp:ListItem Value="0">Size</asp:ListItem>
                  <asp:ListItem Value="100">Regular P100</asp:ListItem>
                  <asp:ListItem Value="200">Large P200</asp:ListItem>
                </asp:DropDownList>
                Qnt:<asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="*"  MaximumValue="20" MinimumValue="0" ControlToValidate="fbcQty" Type="Integer">*</asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="fbcQty" runat="server" Width="110px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
                
                Price:<asp:TextBox ID="fbcPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>
            </div>

            <div class='child'> 
                <asp:Image class="images" ID="Image8" runat="server" ImageUrl="~/Images/menupics/spam.jpg" />
                
                SPAM Classic, Egg & Cheese on Potato Bread
               
                <p2>SPAM Classic, fluffy scrambled egg and melted cheddar cheese on soft potato bread.</p2>
                <asp:DropDownList ID="DropDownList24" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                    <asp:ListItem Value="0">Size</asp:ListItem>
                      <asp:ListItem Value="100">Regular P100</asp:ListItem>
                      <asp:ListItem Value="200">Large P200</asp:ListItem>
                </asp:DropDownList>
                Qnt:<asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="*"  MaximumValue="20" MinimumValue="0" ControlToValidate="spamQty" Type="Integer">*</asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="spamQty" runat="server" Width="110px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
                
                Price:<asp:TextBox ID="spamPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>
            </div>
             <div class='child'>
                 <asp:Image class="images" ID="Image9" runat="server" ImageUrl="~/Images/menupics/bbc.jpg" />
                 
                 Blueberry Licious Cheesecake
                
                  <p2>A silken smooth, yet light cheesecake swirled with blueberries bursting with flavors. Finished with sweet-tangy blueberry compote. A refreshing dessert!</p2>

                 <asp:DropDownList ID="DropDownList25" runat="server" AutoPostBack="True" OnSelectedIndexChanged="actions" CssClass="menu-drop">
                    <asp:ListItem Value="0">Size</asp:ListItem>
                    <asp:ListItem Value="100">Regular P100</asp:ListItem>
                    <asp:ListItem Value="200">Large P200</asp:ListItem>
                </asp:DropDownList>
                 Qnt:<asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*"  MaximumValue="20" MinimumValue="0" ControlToValidate="blcQty" Type="Integer">*</asp:RangeValidator><asp:TextBox class= "menu-quantity" ID="blcQty" runat="server" Width="110px" type="number" min="0" max="20" AutoPostBack="True" OnTextChanged="actions" TextMode="Number">0</asp:TextBox>
                
                 Price:<asp:TextBox ID="blcPrice" runat="server" AutoPostBack="True" Enabled="False" CssClass="menu-price"></asp:TextBox>

             </div>

      </div>
      Total Price: 
      <asp:TextBox ID="orderTotal" runat="server" AutoPostBack="True" Enabled="False" Width="149px" CssClass="menu-total">0</asp:TextBox>
      <asp:Button class= "button" ID="orderButton" runat="server" Text="Order" Width="92px" OnClick="Button1_Click" />

      <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Text="Clear" Width="87px" OnClick="buttonclear" />

  </div>
    
</asp:Content>
