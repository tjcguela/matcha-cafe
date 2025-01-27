<%@ Page Title="" Language="C#" MasterPageFile="~/CoffeeLotte.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="ActualMP.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/menu.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Receipt</h2>
    <!--
    <div class="footer">
        <asp:GridView ID="GridViewReceipt" runat="server"></asp:GridView>
    </div>
    -->
    <div class="menu-main-container">
        <div id="orderBox" runat="server" visible="true" class="menu-main-subcontainer2">
            <div class="order-summary">
                <!------------->
                <!-- Heading -->
                <!------------->
               <div id="orderIDHeading" runat="server" class="order-contents">
                   <p>
                        Order ID:
                    </p>
                    <asp:Label ID="lblOrderID" runat="server"></asp:Label>
               </div>
                <div id="orderIDCustomer" runat="server" class="order-contents">
                    <p>
                         Customer:
                     </p>
                     <asp:Label ID="lblOrderCustomer" runat="server"></asp:Label>
                </div>
                <div class="order-contents" >
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
                        <asp:Label ID="lblOrderSummNaturalSmallSize" runat="server" Text="Small (80.50)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummNaturalSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummNaturalSmallPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummNaturalMedium" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummNaturalMediumQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummNaturalMediumName" runat="server" Text="Natural Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummNaturalMediumSize" runat="server" Text="Medium (100.75)"></asp:Label>

                    </div>
                    <asp:Label ID="lblOrderSummNaturalMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummNaturalMediumPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummNaturalLarge" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummNaturalLargeQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummNaturalLargeName" runat="server" Text="Natural Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummNaturalLargeSize" runat="server" Text="Large (125.80)"></asp:Label>

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
                        <asp:Label ID="lblOrderSummStrawberrySmallSize" runat="server" Text="Small (100.50)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummStrawberrySmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummStrawberrySmallPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummStrawberryMedium" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummStrawberryMediumQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummStrawberryMediumName" runat="server" Text="Strawberry Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummStrawberryMediumSize" runat="server" Text="Medium (150.75)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummStrawberryMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummStrawberryMediumPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummStrawberryLarge" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummStrawberryLargeQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummStrawberryLargeName" runat="server" Text="Strawberry Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummStrawberryLargeSize" runat="server" Text="Large (200.85)"></asp:Label>
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
                        <asp:Label ID="lblOrderSummLilacSmallSize" runat="server" Text="Small (150.50)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummLilacSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummLilacSmallPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummLilacMedium" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummLilacMediumQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummLilacMediumName" runat="server" Text="Lilac Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummLilacMediumSize" runat="server" Text="Medium (200.80)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummLilacMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummLilacMediumPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummLilacLarge" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummLilacLargeQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummLilacLargeName" runat="server" Text="Lilac Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummLilacLargeSize" runat="server" Text="Large (250.99)"></asp:Label>
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
                        <asp:Label ID="lblOrderSummEspressoSmallSize" runat="server" Text="Small (50.50)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummEspressoSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummEspressoSmallPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummEspressoMedium" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummEspressoMediumQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummEspressoMediumName" runat="server" Text="Espresso Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummEspressoMediumSize" runat="server" Text="Medium (75.80)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummEspressoMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummEspressoMediumPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummEspressoLarge" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummEspressoLargeQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummEspressoLargeName" runat="server" Text="Espresso Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummEspressoLargeSize" runat="server" Text="Large (100.75)"></asp:Label>
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
                        <asp:Label ID="lblOrderSummChocoSmallSize" runat="server" Text="Small (75.50)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummChocoSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummChocoSmallPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummChocoMedium" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummChocoMediumQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummChocoMediumName" runat="server" Text="Choco Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummChocoMediumSize" runat="server" Text="Medium (100.65)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummChocoMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummChocoMediumPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummChocoLarge" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummChocoLargeQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummChocoLargeName" runat="server" Text="Choco Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummChocoLargeSize" runat="server" Text="Large (125.85)"></asp:Label>
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
                        <asp:Label ID="lblOrderSummWhiteSmallSize" runat="server" Text="Small (80.75)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummWhiteSmallRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummWhiteSmallPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummWhiteMedium" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummWhiteMediumQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummWhiteMediumName" runat="server" Text="White Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummWhiteMediumSize" runat="server" Text="Medium (120.66)"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummWhiteMediumRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummWhiteMediumPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummWhiteLarge" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummWhiteLargeQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummWhiteLargeName" runat="server" Text="White Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummWhiteLargeSize" runat="server" Text="Large (200.55)"></asp:Label>
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
                        <asp:Label ID="lblOrderSummPastriesSixSize" runat="server" Text="(Six Pieces) 300.65"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummPastriesSixRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummPastriesSixPrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummPastriesTwelve" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummPastriesTwelveQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummPastriesTwelveName" runat="server" Text="Pastries Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummPastriesTwelveSize" runat="server" Text="(Twelve Pieces) 500.25"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummPastriesTwelveRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummPastriesTwelvePrice" runat="server" Text="0"></asp:Label>
                </div>
                <div id="orderSummPastriesTwenty" visible="false" runat="server" class="order-contents">
                    <div class="order-quantity-name">
                        <asp:Label ID="lblOrderSummPastriesTwentyQty" runat="server" Text="0"></asp:Label>
                        <asp:Label ID="lblOrderSummPastriesTwentyName" runat="server" Text="Pastries Matcha"></asp:Label>
                        <asp:Label ID="lblOrderSummPastriesTwentySize" runat="server" Text="(Twenty Pieces) 850.88"></asp:Label>
                    </div>
                    <asp:Label ID="lblOrderSummPastriesTwentyRV" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Min/Max Limit breached!" Visible="false" ></asp:Label>
                    <asp:Label ID="lblOrderSummPastriesTwentyPrice" runat="server" Text="0"></asp:Label>
                </div>
                <!-------------->
                <!-- Pastries -->
                <!-------------->
                <div class="order-contents">
                    <p>
                        Grand Total
                    </p>
                    <asp:Label ID="lblGrandTotal" runat="server" Text="" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
