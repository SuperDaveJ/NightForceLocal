<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Nightforce.ReticleCalculator.Results" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ReviewInputDialog.ascx" TagName="ReviewInputDialog" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:ReviewInputDialog ID="ReviewInputWindow" runat="server" />
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
	    <div id="PageTitle">
            <img title="Results" src="images/Pages/Results.png" alt="Results" width="64" height="15" id="Image3" />
        </div>
        <div id="Crumb">
             <asp:LinkButton ID="SelectAmmunitionCrumb" ToolTip="Ammunition Selection" runat="server" onclick="SelectAmmunitionCrumb_Click">
                Ammunition Selection  &gt;
            </asp:LinkButton>
            <asp:LinkButton ID="BulletSelectionCrumb" runat="server" onclick="BulletSelectionCrumb_Click">
                Bullet Selection &gt;
            </asp:LinkButton>
            <asp:LinkButton ID="AtmosphericConditionsCrumb" runat="server" onclick="AtmosphericConditionsCrumb_Click">
                Atmospheric Conditions &gt;
            </asp:LinkButton>
            <asp:LinkButton ID="ConfirmationCrumb" runat="server" onclick="ConfirmationCrumb_Click">
                Confirmation &gt;
            </asp:LinkButton>
            Results
        </div>
        <telerik:RadAjaxPanel ID="RadAjaxPanel1" RestoreOriginalRenderDelegate="false" runat="server">
            <div id="ResultWindow">
                <div id="Title600">
                    Velocity&#0153 600 Reticle
                </div>
                <div id="Title1000">
                    Velocity&#0153 1000 Reticle
                </div>
                <div id="InputBtn">
                    <asp:LinkButton ID="InputButton" ToolTip="Review Inputs" OnClientClick="ShowReviewInputDialog();return false;" runat="server">
                        <img src="Images/Buttons/ReviewUp.png" alt="Review Inputs" width="149" height="39" id="Image4" onmouseover="MM_swapImage('Image4','','Images/Buttons/ReviewOver.png',1)" onmouseout="MM_swapImgRestore()" />
                    </asp:LinkButton>
                </div>
                <div id="NotFound600">
                    <asp:Literal ID="Scope600NotFound" runat="server"></asp:Literal>
                </div>
                <div id="Text600">
                    <table style="width:360px;">
                        <tr>
                            <td valign="top" style="width:227px;">
                                <span class="ReticleTitle">
                                    <asp:Literal ID="Reticle600Name" runat="server"></asp:Literal>
                                </span>
                                <br />
                                <br />
                                <asp:LinkButton ID="Detail600Button" ToolTip="Reticle Specification Sheet" runat="server">
                                    <img src="Images/Buttons/MoreInfoUp.png" alt="Reticle Specification Sheet" width="200" height="60" id="Image6" onmouseover="MM_swapImage('Image6','','Images/Buttons/MoreInfoOver.png',1)" onmouseout="MM_swapImgRestore()" />
                                </asp:LinkButton>
                                <br />
                                <br />
                                <asp:Literal ID="Scope600Label" runat="server"></asp:Literal>
                                <ul style="margin-top:2px">
                                    <asp:PlaceHolder ID="Scope600ListHolder" runat="server"></asp:PlaceHolder>
                                </ul>
                            </td>
                            <td valign="top" style="width:133px;text-align:center;">
                                <asp:Literal ID="Image600Link" runat="server"></asp:Literal>
                                <asp:HyperLink ID="DetailLink600" Target="_blank" runat="server">View Larger</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Literal ID="Optimum600Text" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="NotFound1000">
                    <asp:Literal ID="Scope1000NotFound" runat="server"></asp:Literal>
                </div>
                <div id="Text1000">
                    <table style="width:360px;">
                        <tr>
                            <td valign="top" style="width:227px;">
                                <span class="ReticleTitle">
                                    <asp:Literal ID="Reticle1000Name" runat="server"></asp:Literal>
                                </span>
                                <br />
                                <br />
                                <asp:LinkButton ID="Detail1000Button" ToolTip="Reticle Specification Sheet" runat="server">
                                    <img src="Images/Buttons/MoreInfoUp.png" alt="Reticle Specification Sheet" width="200" height="60" id="Image8" onmouseover="MM_swapImage('Image8','','Images/Buttons/MoreInfoOver.png',1)" onmouseout="MM_swapImgRestore()" />
                                </asp:LinkButton>
                                <br />
                                <br />
                                <asp:Literal ID="Scope1000Label" runat="server"></asp:Literal>
                                <ul style="margin-top:2px">
                                    <asp:PlaceHolder ID="Scope1000ListHolder" runat="server"></asp:PlaceHolder>
                                </ul>
                            </td>
                            <td valign="top" style="width:133px;text-align:center;">
                                <asp:Literal ID="Image1000Link" runat="server"></asp:Literal>
                                <asp:HyperLink ID="DetailLink1000" Target="_blank" runat="server">View Larger</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Literal ID="Optimum1000Text" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </div>
   	  	        <div id="PrintBtn600">
                    <asp:LinkButton ID="PrintButton600" ToolTip="Show Detailed Results" OnClientClick="ShowResults('1');return false;" runat="server">
                        <img src="Images/Buttons/ShowDetailsUp.png" alt="Show Detailed Results" width="333" height="39" id="Image9" onmouseover="MM_swapImage('Image9','','Images/Buttons/ShowDetailsOver.png',1)" onmouseout="MM_swapImgRestore()" />
                    </asp:LinkButton>
                </div>
                <div id="PrintBtn1000">
                    <asp:LinkButton ID="PrintButton1000" ToolTip="Show Detailed Results" OnClientClick="ShowResults('2');return false;" runat="server">
                        <img src="Images/Buttons/ShowDetailsUp.png" alt="Show Detailed Results" width="333" height="39" id="Image10" onmouseover="MM_swapImage('Image10','','Images/Buttons/ShowDetailsOver.png',1)" onmouseout="MM_swapImgRestore()" />
                    </asp:LinkButton>
                </div>
            </div>       
        </telerik:RadAjaxPanel>
        <div id="BackBtn">
            <asp:LinkButton ID="BackButton" runat="server" ToolTip="Return To Previous Page" onclick="BackButton_Click">
                <img src="Images/Buttons/ReturnUp.png" alt="Return To Previous Page" width="209" height="39" id="Image11" onmouseover="MM_swapImage('Image11','','Images/Buttons/ReturnOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
        <div id="RestartBtn">
            <asp:LinkButton ID="RestartButton" runat="server" ToolTip="Warning: By Clicking This All Entered Data Will Be Reset" onclick="RestartButton_Click">
                <img src="Images/Buttons/RestartUp.png" alt="Restart Calculator" width="209" height="39" id="Image2" onmouseover="MM_swapImage('Image2','','Images/Buttons/RestartOver.png',1)" onmouseout="MM_swapImgRestore()" />
            </asp:LinkButton>
        </div>
    </div>
</asp:Content>
