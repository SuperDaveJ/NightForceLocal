<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Nightforce.ReticleCalculator.Confirmation" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <input type="hidden" id="ToFocusID" runat="server" />
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="TextBox1Text" />
                    <telerik:AjaxUpdatedControl ControlID="TextBox2Text" />
                    <telerik:AjaxUpdatedControl ControlID="TextBox3Text" />
                    <telerik:AjaxUpdatedControl ControlID="TextBox4Text" />
                    <telerik:AjaxUpdatedControl ControlID="TextBox5Text" />
                    <telerik:AjaxUpdatedControl ControlID="TextBox6Text" />
                    <telerik:AjaxUpdatedControl ControlID="TextBox7Text" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientTypeText" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
	    <div id="PageTitle">
            <img title="Confirmation" src="images/pages/Confirmation.png" alt="Confirmation" id="Image3" />
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
            Confirmation
        </div>
	    <div id="MainText">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="49%" valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="45%" valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="BulletWeightLabel" runat="server" ToolTip="Bullet Weight (gr)" Text="Bullet Weight (gr)" AssociatedControlID="TextBox5Text"></asp:Label>
                                        <br />
                                        <asp:Label ID="TextBox5Text" runat="server"></asp:Label> 
                                    </td>
                                    <td width="55%" valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="TextBox1Label" runat="server"></asp:Label>
                                        <br />
                                        <telerik:RadNumericTextBox ID="TextBox1" Width="50px" runat="server">
                                            <ClientEvents OnValueChanged="TextBox1TextValueChanged" />
                                        </telerik:RadNumericTextBox>
                                        <asp:Label ID="TextBox1Text" runat="server"></asp:Label> 
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="BallisticCoefficientLabel" runat="server" ToolTip="Ballistic Coefficient" Text="Ballistic Coefficient" AssociatedControlID="BallisticCoefficientText"></asp:Label>
                                        <br />
                                        <telerik:RadNumericTextBox ID="BallisticCoefficientText" Width="50px" runat="server">
                                            <ClientEvents OnValueChanged="BallisticCoefficientTextValueChanged" />
                                        </telerik:RadNumericTextBox>
                                        <asp:Label ID="TextBox6Text" runat="server"></asp:Label> 
                                    </td>
                                    <td valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="TextBox2Label" runat="server"></asp:Label>
                                        <br />
                                        <telerik:RadNumericTextBox ID="TextBox2" Width="50px" runat="server">
                                            <ClientEvents OnValueChanged="TextBox2TextValueChanged" />
                                        </telerik:RadNumericTextBox>
                                        <asp:Label ID="TextBox2Text" runat="server"></asp:Label> 
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="MuzzleVelocityLabel" runat="server" ToolTip="Muzzle Velocity (f/s)" Text="Muzzle Velocity (f/s)" AssociatedControlID="MuzzleVelocityText"></asp:Label>
                                        <br />
                                        <telerik:RadNumericTextBox ID="MuzzleVelocityText" Width="50px" runat="server">
                                            <ClientEvents OnValueChanged="MuzzleVelocityTextValueChanged" />
                                        </telerik:RadNumericTextBox>
                                        <asp:Label ID="TextBox7Text" runat="server"></asp:Label> 
                                    </td>
                                    <td valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="TextBox3Label" runat="server"></asp:Label>
                                        <br />
                                        <telerik:RadNumericTextBox ID="TextBox3" Width="50px" runat="server">
                                            <ClientEvents OnValueChanged="TextBox3TextValueChanged" />
                                        </telerik:RadNumericTextBox>
                                        <asp:Label ID="TextBox3Text" runat="server"></asp:Label> 
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="BallisticCoefficientTypeLabel" runat="server"></asp:Label>
                                        <br />
                                        <asp:Label ID="BallisticCoefficientTypeText" runat="server"></asp:Label> 
                                    </td>
                                     <td valign="top">
                                        <asp:Label CssClass="ItemLabelText" ID="TextBox4Label" runat="server"></asp:Label>
                                        <br />
                                        <telerik:RadNumericTextBox ID="TextBox4" Width="50px" runat="server">
                                            <ClientEvents OnValueChanged="TextBox4TextValueChanged" />
                                        </telerik:RadNumericTextBox>
                                        <asp:Label ID="TextBox4Text" runat="server"></asp:Label> 
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        <div style="text-align:center;">
                            <asp:LinkButton ID="ModifyButton" runat="server" ToolTip="Click To Modify Data" onclick="ModifyButton_Click">
                                <img src="Images/Buttons/ModifyDataUp.png" alt="Click To Modify Data" width="333" height="40" id="Image6" onmouseover="MM_swapImage('Image6','','Images/Buttons/ModifyDataOver.png',1)" onmouseout="MM_swapImgRestore()" />
                            </asp:LinkButton>
                            <asp:Literal ID="PageEntryError" runat="server"></asp:Literal>
                        </div>
                    </td>
                    <td width="2%" align="center" valign="middle">
                        <p>
                            <img src="images/interface/RuleLine.jpg" width="2" height="263" />
                            <br />
                        </p>
                    </td>
                    <td width="49%" align="center" valign="middle">
                        <asp:LinkButton ID="BestReticleButton" ToolTip="Show Best Reticle And Available Scope Options" runat="server" onclick="BestReticleButton_Click">
                            <img src="Images/Buttons/BestAvailableUp.png" alt="Show Best Reticle And Available Scope Options" width="333" height="82" id="Image4" onmouseover="MM_swapImage('Image4','','Images/Buttons/BestAvailableOver.png',1)" onmouseout="MM_swapImgRestore()" />
                        </asp:LinkButton>
                    </td>
                </tr>
            </table>
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

