<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="ActualMP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/menu.css">
    <title>Menu | Matcha, Matcha, Much! </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!----------------->
    <!----------------->
    <!-- COLD DRINKS -->
    <!----------------->
    <!----------------->
    <h2>Cold Drinks</h2>
    <asp:ScriptManager ID="SMNaturalMatcha" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
        <ContentTemplate>
            <div class="menu-main-container">
                <div class="menu-main-subcontainer">
                    <div class="menu-imgcontainer">

                    </div>
                    <div class="menu-subcontainer2">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <!----------------->
                                <!-- First Drink -->
                                <!----------------->
                                <div class="title">
                                    <h3>Natural Matcha</h3>
                                    <asp:Label ID="lblPriceNatural" runat="server" Text="₱ 0.00"></asp:Label>
                                </div>
                                <p>
                                    A delicious drink for many. Made up of fresh and vibrant ingredients.
                                </p>
                                <div class="title2">
                                    <p>Size: </p>
                                    <p>
                                        <asp:Label ID="lblQtyNaturalRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                    </p>
                                    <asp:DropDownList ID="DDSizeNatural" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizeNatural_SelectedIndexChanged">
                                        <asp:ListItem id="nsPrice" runat="server" Value="80.50">Small</asp:ListItem>
                                        <asp:ListItem id="nmPrice" runat="server" Value="100.75" Selected="True">Medium</asp:ListItem>
                                        <asp:ListItem id="nlPrice" runat="server" Value="125.80">Large</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div id="txtQtyNaturalParent" runat="server" class="title2">
                                    <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyNatural" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyNatural" ></asp:RequiredFieldValidator> </p>
                                    <asp:TextBox Placeholder="1-20" ID="txtQtyNatural" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyNatural_TextChanged" Text="0"></asp:TextBox>
                                </div>
                                <div class="button-container">
                                    <asp:Button ID="btnNaturalAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnNaturalAdd_Click" />
                                    <asp:Button ID="btnNaturalRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnNaturalRemove_Click" />
                                </div>
                                <!----------------->
                                <!-- First Drink -->
                                <!----------------->
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="menu-main-subcontainer">
                    <div class="menu-imgcontainer2">

                    </div>
                    <div class="menu-subcontainer2">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <!------------------>
                                <!-- Second Drink -->
                                <!------------------>
                                <div class="title">
                                    <h3>Strawberry Matcha</h3>
                                    <asp:Label ID="lblPriceStrawberry" runat="server" Text="₱ 0.00"></asp:Label>
                                </div>
                                <p>
                                    A mix of strawberry and matcha ready to be served for all.
                                </p>
                                <div class="title2">
                                    <p>Size: </p>
                                    <p>
                                        <asp:Label ID="lblQtyStrawberryRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                    </p>
                                    <asp:DropDownList ID="DDSizeStrawberry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizeStrawberry_SelectedIndexChanged">
                                        <asp:ListItem id="ssPrice" runat="server" Value="100.50" >Small</asp:ListItem>
                                        <asp:ListItem id="smPrice" runat="server" Value="150.75" Selected="True">Medium</asp:ListItem>
                                        <asp:ListItem id="slPrice" runat="server" Value="200.85">Large</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="title2">
                                    <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyStrawberry" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyStrawberry" ></asp:RequiredFieldValidator> </p>
                                    <asp:TextBox Placeholder="1-20" ID="txtQtyStrawberry" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyStrawberry_TextChanged" Text="0" ></asp:TextBox>
                                </div>
                                <div class="button-container">
                                    <asp:Button ID="btnStrawberryAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnStrawberryAdd_Click" />
                                    <asp:Button ID="btnStrawberryRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnStrawberryRemove_Click" />
                                </div>
                                <!------------------>
                                <!-- Second Drink -->
                                <!------------------>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="menu-main-subcontainer">
                    <div class="menu-imgcontainer3">

                    </div>
                    <div class="menu-subcontainer2">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <!----------------->
                                <!-- Third Drink -->
                                <!----------------->
                                <div class="title">
                                    <h3>Lilac Matcha</h3>
                                    <asp:Label ID="lblPriceLilac" runat="server" Text="₱ 0.00"></asp:Label>
                                </div>
                                <p>
                                    Pretty Lilac for those who love to indulge in luxuries.
                                </p>
                                <div class="title2">
                                    <p>Size: </p>
                                    <p>
                                        <asp:Label ID="lblQtyLilacRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                    </p>
                                     <asp:DropDownList ID="DDSizeLilac" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizeLilac_SelectedIndexChanged">
                                         <asp:ListItem id="lsPrice" runat="server" Value="150.50" >Small</asp:ListItem>
                                         <asp:ListItem id="lmPrice" runat="server" Value="200.80" Selected="True" >Medium</asp:ListItem>
                                         <asp:ListItem id="llPrice" runat="server" Value="250.99" >Large</asp:ListItem>
                                     </asp:DropDownList>
                                </div>
                                <div class="title2">
                                    <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyLilac" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyLilac" ></asp:RequiredFieldValidator> </p>
                                    <asp:TextBox Placeholder="1-20" ID="txtQtyLilac" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyLilac_TextChanged" Text="0"></asp:TextBox>
                                </div>
                                <div class="button-container">
                                    <asp:Button ID="btnLilacAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnLilacAdd_Click" />
                                    <asp:Button ID="btnLilacRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnLilacRemove_Click" />
                                </div>
                                <!----------------->
                                <!-- Third Drink -->
                                <!----------------->
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <!---------------->
            <!---------------->
            <!-- HOT DRINKS -->
            <!---------------->
            <!---------------->
             <h2>Hot Drinks</h2>
             <div class="menu-main-container">
                 <div class="menu-main-subcontainer">
                     <div class="menu-imgcontainer4">

                     </div>
                     <div class="menu-subcontainer2">
                         <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                             <ContentTemplate>
                                 <!----------------->
                                 <!-- First Drink -->
                                 <!----------------->
                                 <div class="title">
                                     <h3>Espresso Matcha</h3>
                                     <asp:Label ID="lblPriceEspresso" runat="server" Text="₱ 0.00"></asp:Label>
                                 </div>
                                 <p>
                                     There is no better way to staying up than with a mixture of matcha and espresso.
                                 </p>
                                 <div class="title2">
                                     <p>Size: </p>
                                     <p>
                                        <asp:Label ID="lblQtyEspressoRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                    </p>
                                      <asp:DropDownList ID="DDSizeEspresso" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizeEspresso_SelectedIndexChanged" >
                                          <asp:ListItem id="esPrice" runat="server" Value="50.50" >Small</asp:ListItem>
                                          <asp:ListItem id="emPrice" runat="server" Value="75.80" Selected="True" >Medium</asp:ListItem>
                                          <asp:ListItem id="elPrice" runat="server" Value="100.75">Large</asp:ListItem>
                                      </asp:DropDownList>
                                 </div>
                                 <div runat="server" class="title2">
                                     <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyEspresso" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyEspresso" ></asp:RequiredFieldValidator> </p>
                                     <asp:TextBox Placeholder="1-20" ID="txtQtyEspresso" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyEspresso_TextChanged" Text="0"></asp:TextBox>
                                 </div>
                                 <div class="button-container">
                                    <asp:Button ID="btnEspressoAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnEspressoAdd_Click" />
                                    <asp:Button ID="btnEspressoRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnEspressoRemove_Click" />
                                </div>
                                 <!----------------->
                                 <!-- First Drink -->
                                 <!----------------->
                             </ContentTemplate>
                         </asp:UpdatePanel>
                     </div>
                 </div>
                 <div class="menu-main-subcontainer">
                     <div class="menu-imgcontainer5">

                     </div>
                     <div class="menu-subcontainer2">
                         <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                             <ContentTemplate>
                                 <!------------------>
                                 <!-- Second Drink -->
                                 <!------------------>
                                 <div class="title">
                                     <h3>Choco Matcha</h3>
                                    <asp:Label ID="lblPriceChoco" runat="server" Text="₱ 0.00"></asp:Label>
                                 </div>
                                 <p>
                                     Creamy Yummy Chocolate that pairs well with matcha to produce a sublime flavor.
                                 </p>
                                 <div class="title2">
                                     <p>Size: </p>
                                      <p>
                                          <asp:Label ID="lblQtyChocoRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                      </p>
                                      <asp:DropDownList ID="DDSizeChoco" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizeChoco_SelectedIndexChanged">
                                          <asp:ListItem id="csPrice" runat="server" Value="75.50" >Small</asp:ListItem>
                                          <asp:ListItem id="cmPrice" runat="server" Value="100.65" Selected="True" >Medium</asp:ListItem>
                                          <asp:ListItem id="clPrice" runat="server" Value="125.85" >Large</asp:ListItem>
                                      </asp:DropDownList>
                                 </div>
                                 <div class="title2">
                                     <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyChoco" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyChoco" ></asp:RequiredFieldValidator> </p>
                                     <asp:TextBox Placeholder="1-20" ID="txtQtyChoco" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyChoco_TextChanged" Text="0"></asp:TextBox>
                                 </div>
                                 <div class="button-container">
                                    <asp:Button ID="btnChocoAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnChocoAdd_Click" />
                                    <asp:Button ID="btnChocoRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnChocoRemove_Click" />
                                </div>
                                 <!------------------>
                                 <!-- Second Drink -->
                                 <!------------------>
                             </ContentTemplate>
                         </asp:UpdatePanel>
                     </div>
                 </div>
                 <div class="menu-main-subcontainer">
                     <div class="menu-imgcontainer6">

                     </div>
                     <div class="menu-subcontainer2">
                         <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                             <ContentTemplate>
                                 <!----------------->
                                 <!-- Third Drink -->
                                 <!----------------->
                                 <div class="title">
                                     <h3>White Matcha</h3>
                                    <asp:Label ID="lblPriceWhite" runat="server" Text="₱ 0.00"></asp:Label>
                                 </div>
                                 <p>
                                     Pure white matcha to those who enjoy simpler matcha styles.
                                 </p>
                                 <div class="title2">
                                     <p>Size: </p>
                                     <p>
                                        <asp:Label ID="lblQtyWhiteRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                    </p>
                                      <asp:DropDownList ID="DDSizeWhite" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizeWhite_SelectedIndexChanged">
                                          <asp:ListItem id="wsPrice" runat="server" Value="80.75" >Small</asp:ListItem>
                                          <asp:ListItem id="wmPrice" runat="server" Value="120.66" Selected="True" >Medium</asp:ListItem>
                                          <asp:ListItem id="wlPrice" runat="server" Value="200.55" >Large</asp:ListItem>
                                      </asp:DropDownList>
                                 </div>
                                 <div class="title2">
                                     <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyWhite" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyWhite" ></asp:RequiredFieldValidator> </p>
                                     <asp:TextBox Placeholder="1-20" ID="txtQtyWhite" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyWhite_TextChanged" Text="0"></asp:TextBox>
                                 </div>
                                 <div class="button-container">
                                    <asp:Button ID="btnWhiteAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnWhiteAdd_Click" />
                                    <asp:Button ID="btnWhiteRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnWhiteRemove_Click" />
                                </div>
                                 <!----------------->
                                 <!-- Third Drink -->
                                 <!----------------->
                             </ContentTemplate>
                         </asp:UpdatePanel>
                     </div>
                 </div>
             </div>

            <!-------------->
            <!-------------->
            <!-- PASTRIES -->
            <!-------------->
            <!-------------->

            <h2 id="pastries-title" >Pastries</h2>
            <div class="menu-main-container">
                <div class="menu-main-subcontainer2">
                    <div class="menu-imgcontainer7">
                    </div>
                    <div class="menu-subcontainer2">
                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                            <ContentTemplate>
                                <!------------>
                                <!-- Pastry -->
                                <!------------>
                                <div id="last-subtitle" class="title">
                                    <h3>Matcha Brownies</h3>
                                    <asp:Label ID="lblPricePastries" runat="server" Text="₱ 0.00"></asp:Label>
                                </div>
                                <p>
                                    Delicious matcha brownies for all! Buy it now to satisfy your cravings.
                                </p>
                                <div class="title2">
                                    <p>Size: </p>
                                     <p>
                                        <asp:Label ID="lblQtyPastriesRV" runat="server" ForeColor="red" Font-Size="X-Small" ></asp:Label>
                                    </p>
                                     <asp:DropDownList ID="DDSizePastries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDSizePastries_SelectedIndexChanged">
                                         <asp:ListItem id="p6Price" runat="server" Value="300.65" >Six Pieces</asp:ListItem>
                                         <asp:ListItem id="p12Price" runat="server" Value="500.25" Selected="True">Twelve Pieces</asp:ListItem>
                                         <asp:ListItem id="p20Price" runat="server"  Value="850.88">Twenty Pieces</asp:ListItem>
                                     </asp:DropDownList>
                                </div>
                                <div class="title2">
                                    <p>Quantity:<asp:RequiredFieldValidator ID="RFVQtyPastries" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtQtyPastries" ></asp:RequiredFieldValidator> </p>
                                    <asp:TextBox Placeholder="1-20" ID="txtQtyPastries" runat="server" CssClass="menu-textbox" AutoPostBack="True" TextMode="Number" OnTextChanged="txtQtyPastries_TextChanged" Text="0"></asp:TextBox>
                                </div>
                                <div class="button-container">
                                    <asp:Button ID="btnPastriesAdd" runat="server" Text="Add" CssClass="menu-button" OnClick="btnPastriesAdd_Click" />
                                    <asp:Button ID="btnPastriesRemove" runat="server" Text="Remove" CssClass="menu-button" OnClick="btnPastriesRemove_Click" />
                                </div>
                                <!------------>
                                <!-- Pastry -->
                                <!------------>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <!------------------->
            <!------------------->
            <!-- Order Summary -->
            <!------------------->
            <!------------------->

            <h2 id="orderBoxTitle" runat="server" visible="false" >Order Summary</h2>
            <asp:UpdatePanel ID="NaturalUpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                <ContentTemplate>
                    <div class="menu-main-container">
                        <div id="orderBox" runat="server" visible="false" class="menu-main-subcontainer2">
                            <div class="order-summary">
                                <!------------->
                                <!-- Heading -->
                                <!------------->
                               <div class="order-contents">
                                   <p>
                                       Order Details
                                   </p>
                                   <p>
                                       Price
                                   </p>
                               </div>
                                <!------------->
                                <!-- Heading -->
                                <!------------->


                                <!------------->
                                <!-- Natural -->
                                <!------------->
                                <div id="orderSummNaturalSmall" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummNaturalSmallQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummNaturalSmallName" runat="server" Text="Natural Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummNaturalSmallSize" runat="server" Text="Small"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummNaturalSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummNaturalSmallPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummNaturalMedium" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummNaturalMediumQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummNaturalMediumName" runat="server" Text="Natural Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummNaturalMediumSize" runat="server" Text="Medium"></asp:Label>

                                    </div>
                                    <asp:Label ID="lblOrderSummNaturalMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummNaturalMediumPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummNaturalLarge" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummNaturalLargeQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummNaturalLargeName" runat="server" Text="Natural Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummNaturalLargeSize" runat="server" Text="Large"></asp:Label>

                                    </div>
                                    <asp:Label ID="lblOrderSummNaturalLargeRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummNaturalLargePrice" runat="server" Text="0"></asp:Label>
                                </div>

                                <!------------->
                                <!-- Natural -->
                                <!------------->

                                <!---------------->
                                <!-- Strawberry -->
                                <!---------------->

                                <div id="orderSummStrawberrySmall" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummStrawberrySmallQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummStrawberrySmallName" runat="server" Text="Strawberry Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummStrawberrySmallSize" runat="server" Text="Small"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummStrawberrySmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummStrawberrySmallPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummStrawberryMedium" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummStrawberryMediumQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummStrawberryMediumName" runat="server" Text="Strawberry Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummStrawberryMediumSize" runat="server" Text="Medium"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummStrawberryMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummStrawberryMediumPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummStrawberryLarge" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummStrawberryLargeQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummStrawberryLargeName" runat="server" Text="Strawberry Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummStrawberryLargeSize" runat="server" Text="Large"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummStrawberryLargeRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummStrawberryLargePrice" runat="server" Text="0"></asp:Label>
                                </div>

                                 <!---------------->
                                 <!-- Strawberry -->
                                 <!---------------->

                                <!----------->
                                <!-- Lilac -->
                                <!----------->

                                <div id="orderSummLilacSmall" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummLilacSmallQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummLilacSmallName" runat="server" Text="Lilac Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummLilacSmallSize" runat="server" Text="Small"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummLilacSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummLilacSmallPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummLilacMedium" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummLilacMediumQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummLilacMediumName" runat="server" Text="Lilac Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummLilacMediumSize" runat="server" Text="Medium"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummLilacMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummLilacMediumPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummLilacLarge" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummLilacLargeQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummLilacLargeName" runat="server" Text="Lilac Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummLilacLargeSize" runat="server" Text="Large"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummLilacLargeRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummLilacLargePrice" runat="server" Text="0"></asp:Label>
                                </div>
                                 <!----------->
                                 <!-- Lilac -->
                                 <!----------->
                        
                                 <!-------------->
                                 <!-- Espresso -->
                                 <!-------------->

                                <div id="orderSummEspressoSmall" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummEspressoSmallQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummEspressoSmallName" runat="server" Text="Espresso Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummEspressoSmallSize" runat="server" Text="Small"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummEspressoSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummEspressoSmallPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummEspressoMedium" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummEspressoMediumQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummEspressoMediumName" runat="server" Text="Espresso Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummEspressoMediumSize" runat="server" Text="Medium"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummEspressoMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummEspressoMediumPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummEspressoLarge" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummEspressoLargeQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummEspressoLargeName" runat="server" Text="Espresso Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummEspressoLargeSize" runat="server" Text="Large"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummEspressoLargeRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummEspressoLargePrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <!-------------->
                                <!-- Espresso -->
                                <!-------------->

                                <!----------->
                                <!-- Choco -->
                                <!----------->
                                <div id="orderSummChocoSmall" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummChocoSmallQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummChocoSmallName" runat="server" Text="Choco Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummChocoSmallSize" runat="server" Text="Small"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummChocoSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummChocoSmallPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummChocoMedium" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummChocoMediumQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummChocoMediumName" runat="server" Text="Choco Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummChocoMediumSize" runat="server" Text="Medium"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummChocoMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummChocoMediumPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummChocoLarge" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummChocoLargeQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummChocoLargeName" runat="server" Text="Choco Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummChocoLargeSize" runat="server" Text="Large"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummChocoLargeRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummChocoLargePrice" runat="server" Text="0"></asp:Label>
                                </div>

                                <!----------->
                                <!-- Choco -->
                                <!----------->

                                <!----------->
                                <!-- White -->
                                <!----------->
                                <div id="orderSummWhiteSmall" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummWhiteSmallQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummWhiteSmallName" runat="server" Text="White Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummWhiteSmallSize" runat="server" Text="Small"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummWhiteSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummWhiteSmallPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummWhiteMedium" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummWhiteMediumQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummWhiteMediumName" runat="server" Text="White Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummWhiteMediumSize" runat="server" Text="Medium"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummWhiteMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummWhiteMediumPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummWhiteLarge" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummWhiteLargeQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummWhiteLargeName" runat="server" Text="White Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummWhiteLargeSize" runat="server" Text="Large"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummWhiteLargeRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummWhiteLargePrice" runat="server" Text="0"></asp:Label>
                                </div>

                                <!----------->
                                <!-- White -->
                                <!----------->

                                <!-------------->
                                <!-- Pastries -->
                                <!-------------->
                                <div id="orderSummPastriesSix" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummPastriesSixQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummPastriesSixName" runat="server" Text="Pastries Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummPastriesSixSize" runat="server" Text="(Six Pieces)"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummPastriesSixRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummPastriesSixPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummPastriesTwelve" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummPastriesTwelveQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummPastriesTwelveName" runat="server" Text="Pastries Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummPastriesTwelveSize" runat="server" Text="(Twelve Pieces)"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummPastriesTwelveRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummPastriesTwelvePrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <div id="orderSummPastriesTwenty" visible="false" runat="server" class="order-contents">
                                    <div class="order-quantity-name">
                                        <asp:Label ID="lblOrderSummPastriesTwentyQty" runat="server" Text="0"></asp:Label>
                                        <asp:Label ID="lblOrderSummPastriesTwentyName" runat="server" Text="Pastries Matcha"></asp:Label>
                                        <asp:Label ID="lblOrderSummPastriesTwentySize" runat="server" Text="(Twenty Pieces)"></asp:Label>
                                    </div>
                                    <asp:Label ID="lblOrderSummPastriesTwentyRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                                    <asp:Label ID="lblOrderSummPastriesTwentyPrice" runat="server" Text="0"></asp:Label>
                                </div>
                                <!-------------->
                                <!-- Pastries -->
                                <!-------------->
                            </div>
                            <div class="order-contents">
                                <p>
                                    Grand Total
                                </p>
                                <asp:Label ID="lblGrandTotal" runat="server" Text="" Visible="false"></asp:Label>
                            </div>
                            <div class="button-container">
                                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="menu-button" OnClick="btnConfirm_Click" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="menu-button" OnClick="btnClear_Click" />
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
