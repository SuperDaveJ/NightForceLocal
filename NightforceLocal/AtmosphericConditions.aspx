<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AtmosphericConditions.aspx.cs" Inherits="Nightforce.ReticleCalculator.AtmosphericConditions" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
        <div id="PageTitle">
            <img title="Atmospheric Conditions" src="Images/Pages/AtmosphericConditions.png" alt="Atmospheric Conditions" />
        </div>
        <div id="Crumb">
            <asp:LinkButton ID="SelectAmmunitionCrumb" ToolTip="Ammunition Selection" runat="server" onclick="SelectAmmunitionCrumb_Click">
                Ammunition Selection  &gt;
            </asp:LinkButton>
            <asp:LinkButton ID="BulletSelectionCrumb" runat="server" onclick="BulletSelectionCrumb_Click">
                Bullet Selection &gt;
            </asp:LinkButton>
            Atmospheric Conditions
        </div>
        <div id="HomeText">Please select one of the options below</div>
        <div id="TemperatureBtn">
            <asp:LinkButton ID="TemperatureButton" runat="server" ToolTip="I Know My Temperature, Pressure And Humidity" onclick="TemperatureButton_Click">
                <img src="Images/Buttons/TemperatureUp.png" alt="I Know My Temperature, Pressure And Humidity" width="333" height="82" id="Image3" onmouseover="MM_swapImage('Image3','','Images/Buttons/TemperatureOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="DensityBtn">
            <asp:LinkButton ID="DensityButton" runat="server" ToolTip="I Know My Density Altitude" onclick="DensityButton_Click">
                <img src="Images/Buttons/DensityAltitudeUp.png" alt="I Know My Density Altitude" width="333" height="82" id="Image4" onmouseover="MM_swapImage('Image4','','Images/Buttons/DensityAltitudeOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="AltitudeBtn">
            <asp:LinkButton ID="AltitudeButton" runat="server" ToolTip="I Know My Altitude, Temperature, And Humidity" onclick="AltitudeButton_Click">
                <img src="Images/Buttons/AltitudeUp.png" alt="I Know My Altitude, Temperature, And Humidity" width="333" height="82" id="Image6" onmouseover="MM_swapImage('Image6','','Images/Buttons/AltitudeOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="DefaultBtn">
            <asp:LinkButton ID="DefaultButton" runat="server" ToolTip="I Want To Use The Default Atmospheric Conditions" onclick="DefaultButton_Click">
                <img src="Images/Buttons/DefaultUp.png" alt="I Want To Use The Default Atmospheric Conditions" width="333" height="82" id="Image5" onmouseover="MM_swapImage('Image5','','Images/Buttons/DefaultOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="BackBtn">
            <asp:LinkButton ID="BackButton" runat="server" ToolTip="Return To Previous Page" onclick="BackButton_Click">
                <img src="Images/Buttons/ReturnUp.png" alt="Return To Previous Page" width="209" height="39" id="Image1" onmouseover="MM_swapImage('Image1','','Images/Buttons/ReturnOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="RestartBtn">
            <asp:LinkButton ID="RestartButton" runat="server" ToolTip="Warning: By Clicking This All Entered Data Will Be Reset" onclick="RestartButton_Click">
                <img src="Images/Buttons/RestartUp.png" alt="Restart Calculator" width="209" height="39" id="Image2" onmouseover="MM_swapImage('Image2','','Images/Buttons/RestartOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
    </div>
</asp:Content>

