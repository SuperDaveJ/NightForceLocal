<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FactoryAmmunition.aspx.cs" Inherits="Nightforce.ReticleCalculator.FactoryAmmunition" %>

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
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionNotFoundText" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerLabel" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionLabel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="G7Radio">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionNotFoundText" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerLabel" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionLabel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ManufacturerCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageEntryError" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="AmmunitionCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="G1Radio" />
                    <telerik:AjaxUpdatedControl ControlID="G7Radio" />
                    <telerik:AjaxUpdatedControl ControlID="BallisticCoefficientText" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionWeightText" />
                    <telerik:AjaxUpdatedControl ControlID="MuzzleVelocityText" />
                    <telerik:AjaxUpdatedControl ControlID="ManufacturerCombo" />
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionCombo" />
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
            <img title="Factory Ammunition" src="Images/Pages/FactoryAmmunition.png" alt="Factory Ammunition" id="Image3" />
        </div>
        <div id="Crumb">
            <asp:LinkButton ID="SelectAmmunitionCrumb" ToolTip="Ammunition Selection" runat="server" onclick="SelectAmmunitionCrumb_Click">
                Ammunition Selection  &gt;
            </asp:LinkButton>
            Factory Ammunition
        </div>
	    <div id="MainText">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
	            <tr>
                    <td colspan="3">
                        <asp:Literal ID="PageInstructions" runat="server"></asp:Literal>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
	                <td width="63%" valign="middle">
                        <asp:Label CssClass="ItemLabelText" ID="BallisticCoefficientTypeLabel" runat="server" ToolTip="Ballistic Coefficient Type" Text="Ballistic Coefficient Type"></asp:Label>
                        <br />
                        <asp:Literal ID="BallisticCoefficientTypeText" runat="server"></asp:Literal>
                        <asp:RadioButton ID="G1Radio" AutoPostBack="true" runat="server" Text="G1" Checked="True" oncheckedchanged="G1Radio_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="G7Radio" AutoPostBack="true" runat="server" Text="G7" oncheckedchanged="G7Radio_CheckedChanged" />
                        <asp:Literal ID="AmmunitionNotFoundText" runat="server"></asp:Literal>
                        <br />
                        <br />
                    </td>
	                <td width="3%" rowspan="4" valign="middle">
                        <img src="images/interface/RuleLine.jpg" height="263" width="2" />
                    </td>
	                <td width="34%" align="center">
                        <div style="text-align:left;width:150px;">   
                            <asp:Label CssClass="ItemLabelText" ID="AmmunitionWeightLabel" runat="server" ToolTip="Bullet Weight (gr)" Text="Bullet Weight (gr)" AssociatedControlID="AmmunitionWeightText"></asp:Label>
                            <br />
                            <asp:Label ID="AmmunitionWeightText" runat="server"></asp:Label> 
                            <br />
                            <br />
                        </div>
                    </td>
                </tr>
	            <tr>
	                <td>
                        <asp:Label CssClass="ItemLabelText" ID="ManufacturerLabel" runat="server" ToolTip="Manufacturer\Brand" Text="Manufacturer\Brand" AssociatedControlID="ManufacturerCombo"></asp:Label>
                        <br />
                        <telerik:RadComboBox ID="ManufacturerCombo" runat="server" AutoPostBack="true" 
                            onselectedindexchanged="ManufacturerCombo_SelectedIndexChanged">
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
                        <asp:Label CssClass="ItemLabelText" ID="AmmunitionLabel" runat="server" ToolTip="Ammunition" Text="Ammunition" AssociatedControlID="AmmunitionCombo"></asp:Label>
                        <br />
	                    <telerik:RadComboBox runat="server" ID="AmmunitionCombo" Height="190px"
                            Width="550px"
                            AutoPostBack="true"
                            HighlightTemplatedItems="true"
                            OnDataBound="AmmunitionCombo_DataBound"
                            OnItemDataBound="AmmunitionCombo_ItemDataBound" 
                            onselectedindexchanged="AmmunitionCombo_SelectedIndexChanged">
                            <HeaderTemplate>
                                <ul>
                                    <li class="AmmunitionColumn1Header">Description</li>
                                    <li class="AmmunitionColumn2">Bullet<br />Weight (gr)</li>
                                    <li class="AmmunitionColumn3">
                                        <asp:Literal ID="BallisticCoefficientColumnLabel" runat="server"></asp:Literal>
                                    </li>
                                    <li class="AmmunitionColumn4">Muzzle<br />Velocity (f/s)</li>
                                </ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <ul>
                                    <li class="AmmunitionColumn1">
                                        <%# DataBinder.Eval(Container.DataItem, "Cartridge")%>
                                        <br />
                                        <%# DataBinder.Eval(Container.DataItem, "AmmunitionDescription")%>
                                    </li>
                                    <li class="AmmunitionColumn2">
                                        <%# DataBinder.Eval(Container.DataItem, "AmmunitionWeight", "{0:###0.####}")%>
                                    </li>
                                    <li class="AmmunitionColumn3">
                                            <%# DataBinder.Eval(Container.DataItem, "ManufacturerName")%>
                                    </li>
                                        <li class="AmmunitionColumn4">
                                        <%# DataBinder.Eval(Container.DataItem, "MuzzleVelocity", "{0:###0.####}")%>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </telerik:RadComboBox>
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
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <br />
                        <asp:Literal ID="PageEntryError" runat="server"></asp:Literal>
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

