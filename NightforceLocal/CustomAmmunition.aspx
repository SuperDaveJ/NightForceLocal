<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomAmmunition.aspx.cs" Inherits="Nightforce.ReticleCalculator.CustomAmmunition" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <input type="hidden" id="ToFocusID" runat="server" />
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="G1Radio">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="BulletWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="CaliberCombo" />
                    <telerik:AjaxUpdatedControl ControlID="WeightCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="BulletCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="G7Radio">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="BulletWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="CaliberCombo" />
                    <telerik:AjaxUpdatedControl ControlID="WeightCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="BulletCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="CaliberCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="BulletWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="CaliberCombo" />
                    <telerik:AjaxUpdatedControl ControlID="WeightCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="BulletCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="WeightCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="BulletWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="CaliberCombo" />
                    <telerik:AjaxUpdatedControl ControlID="WeightCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="BulletCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ManufacturerCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="BulletWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="CaliberCombo" />
                    <telerik:AjaxUpdatedControl ControlID="WeightCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="BulletCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="BulletCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="BulletWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="CaliberCombo" />
                    <telerik:AjaxUpdatedControl ControlID="WeightCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="BulletCombo" />
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
            <img title="Custom Ammunition" src="Images/Pages/CustomAmmunition.png" alt="Custom Ammunition" id="Image3" />
        </div>
        <div id="Crumb">
            <asp:LinkButton ID="SelectAmmunitionCrumb" ToolTip="Ammunition Selection" runat="server" onclick="SelectAmmunitionCrumb_Click">
                Ammunition Selection  &gt;
            </asp:LinkButton>
            Bullet Selection And Muzzle Velocity
        </div>
	    <div id="MainText">
            <table width="100%" border="0" cellpadding="0" cellspacing="0"cellpadding="5">
                <tr>
                    <td colspan="3">
                        Please select the Ballistic Coefficient Type (G1 or G7), Manufacturer/Brand, Bullet Type, and Bullet below.
                        <br />
                        <br />
                    </td>
                </tr>
	            <tr>
	                <td width="59%" valign="middle">
                        <asp:Label CssClass="ItemLabelText" ID="BallisticCoefficientTypeLabel" runat="server" ToolTip="Ballistic Coefficient Type" Text="Ballistic Coefficient Type"></asp:Label>
                        <br />
                        <asp:RadioButton ID="G1Radio" AutoPostBack="true" runat="server" Text="G1" Checked="True" oncheckedchanged="G1Radio_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="G7Radio" AutoPostBack="true" runat="server" Text="G7" oncheckedchanged="G7Radio_CheckedChanged" />
                        <asp:Literal ID="BulletsNotFoundText" runat="server"></asp:Literal>
                        <br />
                        <br />
                    </td>
	                <td width="6%" rowspan="5" valign="middle">
                        <img src="images/interface/RuleLine.jpg" width="2" height="263" />
                    </td>
	                <td width="35%" align="center">
                        <div style="text-align:left;width:150px;">  
                            <asp:Label CssClass="ItemLabelText" ID="BulletWeightLabel" runat="server" ToolTip="Bullet Weight (gr)" Text="Bullet Weight (gr)" AssociatedControlID="BulletWeightText"></asp:Label>
                            <br />
                            <asp:Label ID="BulletWeightText" runat="server"></asp:Label> 
                            <br />
                            <br />
                        </div>
                    </td>
                </tr>
	            <tr>
	                <td>
                        <asp:Label CssClass="ItemLabelText" ID="CaliberLabel" runat="server" ToolTip="Caliber (in)" Text="Caliber (in)" AssociatedControlID="CaliberCombo"></asp:Label>
                        <br />
                        <telerik:RadComboBox ID="CaliberCombo" runat="server" AutoPostBack="true" 
                            onselectedindexchanged="CaliberCombo_SelectedIndexChanged">
                        </telerik:RadComboBox>
                        <br />
                        <br />
                    </td>
                    <td align="center">
                        <div style="text-align:left;width:150px;">                          
                            <asp:Label CssClass="ItemLabelText" ID="BallisticCoefficientLabel" runat="server" ToolTip="Ballistic Coefficient" Text="Ballistic Coefficient" AssociatedControlID="BallisticCoefficientText"></asp:Label>
                            <br />
                            <telerik:RadNumericTextBox ID="BallisticCoefficientText" Width="50px" runat="server">
                                <ClientEvents OnValueChanged="BallisticCoefficientTextValueChanged" />
                            </telerik:RadNumericTextBox>
                            <br />
                            <br />
                        </div>
                    </td>
                </tr>
	            <tr>
	                <td>
                        <asp:Label CssClass="ItemLabelText" ID="WeightLabel" runat="server" ToolTip="Bullet Weight (gr)" Text="Bullet Weight (gr)" AssociatedControlID="WeightCombo"></asp:Label>
                        <br />
                        <telerik:RadComboBox ID="WeightCombo" runat="server" AutoPostBack="true" 
                            onselectedindexchanged="WeightCombo_SelectedIndexChanged">
                        </telerik:RadComboBox>
                        <br />
                        <br />
                    </td>
	                <td align="center">
                        <div style="text-align:left;width:150px;">                        
                            <asp:Label CssClass="ItemLabelText" ID="MuzzleVelocityLabel" runat="server" ToolTip="Muzzle Velocity (f/s)" Text="Muzzle Velocity (f/s)" AssociatedControlID="MuzzleVelocityText"></asp:Label>
                            <br />
                            <telerik:RadNumericTextBox ID="MuzzleVelocityText" Width="50px" runat="server">
                                <ClientEvents OnValueChanged="MuzzleVelocityTextValueChanged" />
                            </telerik:RadNumericTextBox>
                            <br />
                            <br />
                        </div>
                    </td>
                </tr>
	            <tr>
	                <td height="35">
                        <asp:Label CssClass="ItemLabelText" ID="ManufacturerLabel" runat="server" ToolTip="Manufacturer\Brand" Text="Manufacturer\Brand" AssociatedControlID="ManufacturerCombo"></asp:Label>
                        <br />
                        <telerik:RadComboBox ID="ManufacturerCombo" runat="server" AutoPostBack="true" 
                            onselectedindexchanged="ManufacturerCombo_SelectedIndexChanged">
                        </telerik:RadComboBox>
                        <br />
                        <br />
                    </td>
	                <td>
                        <br />
                        <asp:Literal ID="PageEntryError" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
	                <td>
                    <asp:Label CssClass="ItemLabelText" ID="BulletLabel" runat="server" ToolTip="Bullet Type And BC Source" Text="Bullet Type And BC Source" AssociatedControlID="BulletCombo"></asp:Label>
                        <br />
	                    <telerik:RadComboBox runat="server" ID="BulletCombo" Height="190px"
                            Width="500px"
                            AutoPostBack="true"
                            HighlightTemplatedItems="true"
                            OnDataBound="BulletCombo_DataBound"
                            OnItemDataBound="BulletCombo_ItemDataBound" 
                            onselectedindexchanged="BulletCombo_SelectedIndexChanged">
                            <HeaderTemplate>
                                <ul>
                                    <li class="BulletColumn1">Bullet Type</li>
                                    <li class="BulletColumn2">BC Source</li>
                                    <li class="BulletColumn3">
                                        <asp:Literal ID="BallisticCoefficientColumnLabel" runat="server"></asp:Literal>
                                    </li>
                                </ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <ul>
                                    <li class="BulletColumn1">
                                            <%# DataBinder.Eval(Container.DataItem, "BulletType")%>
                                    </li>
                                    <li class="BulletColumn2">
                                            <%# DataBinder.Eval(Container.DataItem, "BulletSource")%>
                                    </li>
                                    <li class="BulletColumn3">
                                            <%# DataBinder.Eval(Container.DataItem, "ManufacturerName")%>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </telerik:RadComboBox>
                        <br />
                    </td>
	                <td>
                        &nbsp;
                    </td>
                </tr>
	            <tr>
	                <td colspan="3" align="center">
                        <br />
                        <asp:LinkButton ID="SubmitButton" ToolTip="Submit" runat="server" onclick="SubmitButton_Click">   
                        <img src="Images/Buttons/SubmitUpSmall.png" alt="Submit" width="120" height="21" id="Image4" onmouseover="MM_swapImage('Image4','','Images/Buttons/SubmitOverSmall.png',1)" onmouseout="MM_swapImgRestore()" />
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

