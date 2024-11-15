<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Nightforce.ReticleCalculator.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
	    <div id="PageTitleNoCrumb">
            <img title="Product Acknowledgement" src="Images/Pages/Product.png" alt="Product Acknowledgement" />
        </div>
        <div id="MainTextNoCrumb">
            These reticles were designed around the following atmospheric parameters:
            <br />
            <table width="100%" cellpadding="1" cellspacing="1">
                <tr>
                    <td style="line-height:20px;">
                        <ul>
                            <li>Sight-in distance/Zero:  200 yards (main horizontal bar)</li>
                            <li>Altitude:  2500 feet</li>
                            <li>Pressure @ Altitude:  27.32 (in Hg)</li>
                            <li>Humidity:  50%</li>
                        </ul>
                    </td>
                    <td style="line-height:20px;">
                        <ul>
                            <li>Temperature:  50 deg F</li>
                            <li>Sight height above bore:  1.8 inches</li>
                            <li>Incline angle:  0</li>
                            <li>Spin drift:  0</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Note: Parameters can be modified for your application
                    </td>
                </tr>
            </table>
            <br />
            The accuracy of this reticle is dependent on many factors. The actual confirmed data collected from your ammunition shot out of your rifle is a key factor in gaining the best performance from these reticles. We suggest that you verify your muzzle velocity before proceeding as this is extremely important to gain the complete advantage of these type of reticles.
            <span class="ProductTextBold">Although these reticles serve a broad range of ballistic profiles, it is possible that a recommended match may not be found.</span>
            <br />
            <br />
            If your load changes or you want to use your scope on a different rifle, the Velocity&#0153 reticle will function as a “standard” reticle by using the main reticle intersection for your chosen zero point. Please note that by using this method your velocity reticle will no longer be calibrated for accurate holdovers.
            <br />
            <br />
            For those that will be choosing this reticle for hunting, no matter how sophisticated and “smart” our reticle may be, shooting a game animal at extreme ranges involves serious ethical considerations. We encourage you to do your homework, select a bullet that will deliver optimum terminal performance at the intended distance, and please remember that all of your equipment—including yourself—needs to yield maximum performance to make those shots count.
        </div>
         <div id="ProductAcceptButton">
            <asp:LinkButton ID="AcceptButton" runat="server" ToolTip="I Accept" onclick="AcceptButton_Click">
                <img src="images/Buttons/AcceptUp.png" alt="I Accept" width="149" height="39" id="Image1" onmouseover="MM_swapImage('Image1','','Images/Buttons/AcceptOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
            </div>
        <div id="BackBtn">
            <asp:LinkButton ID="BackButton" runat="server" ToolTip="Return To Previous Page" onclick="BackButton_Click">
                <img src="Images/Buttons/ReturnUp.png" alt="Return To Previous Page" width="209" height="39" id="Image2" onmouseover="MM_swapImage('Image2','','Images/Buttons/ReturnOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        
    </div>
</asp:Content>
