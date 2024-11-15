<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nightforce.ReticleCalculator.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
	    <div id="PageTitleNoCrumbDefault">
            <img title="Nightforce Velocity™ Reticle Calculator" src="Images/Pages/Default.png" alt="Nightforce Velocity™ Reticle Calculator" />
            The Velocity&#0153 Reticle provides precise shot placement without having to estimate holdover.
            <br />
            <br />
        </div>
	    <div id="HomeGraphic">
            <img src="Images/Pages/Scope.png" width="248" height="481" alt="Nightforce Velocity™ Reticle Calculator" title="Nightforce Velocity Reticle Calculator" />
        </div>
        <div id="HomeText">
            <br />
            Welcome to the Nightforce Velocity&#0153 Reticle Calculator. On the following pages you will be guided through the necessary steps in order to determine the best reticle and scope available for your ballistic profile. In order to use this calculator effectively, it is recommended that you know the following data:
            <ul>
                <li>Your Bullet’s Ballistic Coefficient</li>
                <li>Your Bullet’s Weight (in grains)</li>
                <li>Your Confirmed Muzzle Velocity (in feet per second)</li>
                <li>Atmospheric Conditions (Optional)</li>
            </ul>
            If you do not have these, there are steps to determine the items needed for calculation, although they will not be as accurate as confirmed data gathered from the ammunition shot out of your rifle. 
            <br />
            <br />
            To begin the calculation process, please click the button below.
        </div>
        <div id="BeginBtn">
            <asp:LinkButton ID="BeginButton" runat="server" ToolTip="Begin Calculation" onclick="BeginButton_Click">
                <img src="images/Buttons/BeginUp.png" alt="Begin Calculation" width="210" height="52" id="Image1" onmouseover="MM_swapImage('Image1','','Images/Buttons/BeginOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
    </div>
</asp:Content>

