<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuSystem.ascx.cs" Inherits="Nightforce.Controls.MenuSystem" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Literal ID="NightforceMainMenuDiv" runat="server"></asp:Literal>
        <telerik:RadMenu ID="NightforceMainMenu" runat="server" TabIndex="3">
            <Items>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/Home/MenuIcon.png" 
                    Value="100"
                    Text="Home"
                    ToolTip="Home" 
                    NavigateUrl="~/Home.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/Bullets/MenuIcon.png" 
                    Value="200"
                    Text="Custom"
                    ToolTip="Custom Ammunition"  
                    NavigateUrl="~/Administration/Bullets.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/Ammunition/MenuIcon.png" 
                    Value="300"
                    Text="Factory"
                    ToolTip="Factory Ammunition" 
                    NavigateUrl="~/Administration/Ammunition.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/Scopes/MenuIcon.png" 
                    Value="400"
                    Text="Scopes"
                    ToolTip="Scopes" 
                    NavigateUrl="~/Administration/Scopes.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/Reticles/MenuIcon.png" 
                    Value="500"
                    Text="Reticles"
                    ToolTip="Reticles" 
                    NavigateUrl="~/Administration/Reticles.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/ReticleRanges/MenuIcon.png" 
                    Value="600"
                    Text="Reticles Ranges"
                    ToolTip="Reticles Ranges" 
                    NavigateUrl="~/Administration/ReticleRanges.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/PartNumbers/MenuIcon.png" 
                    Value="700"
                    Text="Part #"
                    ToolTip="Part Numbers" 
                    NavigateUrl="~/Administration/PartNumbers.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/ErrorLogs/MenuIcon.png" 
                    Value="800"
                    Text="Error Logs"
                    ToolTip="Error Logs"  
                    NavigateUrl="~/Administration/ErrorLogs.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/ChangePassword/MenuIcon.png" 
                    Value="900" 
                    Text="Change Password"
                    ToolTip="Change Password"  
                    NavigateUrl="~/Administration/ChangePassword.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/Options/MenuIcon.png" 
                    Value="1000"
                    Text="Options"
                    ToolTip="Options"  
                    NavigateUrl="~/Administration/Options.aspx">
                </telerik:RadMenuItem>
                <telerik:RadMenuItem runat="server" 
                    ImageUrl="~/Images/MenuIcons/LogOff/MenuIcon.png" 
                    Value="1100"
                    Text="Log Off"
                    ToolTip="Log Off"  
                    NavigateUrl="~/LogOff.aspx">
                </telerik:RadMenuItem>
            </Items>
        </telerik:RadMenu>
    </div>
</div>