<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AmmunitionSelection.aspx.cs" Inherits="Nightforce.ReticleCalculator.AmmunitionSelection" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
        <div id="PageTitle">
            <img title="Ammunition Selection" src="Images/Pages/FactoryAmmunition.png" alt="Ammunition Selection" />
        </div>
        <div id="HomeText">Please select an option below.</div>
        <div id="CustomAmmunitionBtn">
            <asp:LinkButton ID="CustomAmmunitionButton" runat="server" ToolTip="Custom Ammunition" onclick="CustomAmmunitionButton_Click">
                <img src="Images/Buttons/CustomAmmunitionUp.png" alt="Custom Ammunition" width="333" height="82" id="Image2" onmouseover="MM_swapImage('Image2','','Images/Buttons/CustomAmmunitionOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="FactoryAmmunitionBtn">
            <asp:LinkButton ID="FactoryAmmunitionButton" runat="server" ToolTip="Factory Ammunition" onclick="FactoryAmmunitionButton_Click">
                <img src="Images/Buttons/FactoryAmmunitionUp.png" alt="Factory Ammunition" width="333" height="82" id="Image3" onmouseover="MM_swapImage('Image3','','Images/Buttons/FactoryAmmunitionOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="BackBtn">
            <asp:LinkButton ID="BackButton" runat="server" ToolTip="Return To Previous Page" onclick="BackButton_Click">
                <img src="Images/Buttons/ReturnUp.png" alt="Return To Previous Page" width="209" height="39" id="Image1" onmouseover="MM_swapImage('Image1','','Images/Buttons/ReturnOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
    </div>
</asp:Content>
