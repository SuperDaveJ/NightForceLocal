<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="ResultsData.aspx.cs" Inherits="Nightforce.ReticleCalculator.ResultsData" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Nightforce Velocity™ Reticle Calculator</title>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
    <style type="text/css">
        html, body
        {
            padding: 0;
            border: 0;
            outline: 0;
            color: #000000;
            font-size: 12px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            line-height: 19px;
            margin: 0;
            padding: 0;
        }

        .h1
        {
            font-size: 17px;
            font-weight: bold;
        }

        .h2
        {
            font-size: 15px;
            font-weight: bold;
        }

        .h3
        {
            font-size: 13px;
            font-weight: bold;
        }

        .HeaderBackground
        {
            background:url(Images/HeaderBackground.png) repeat-x;	
        }

        .HeaderBackgroundLarge
        {
            background:url(Images/HeaderBackgroundLarge.png) repeat-x;	
        }

        .HeaderStyle
        {
            border: 1px solid #d0d7e5;
            text-align: center;
            width: 200px;
            font-size: 13px;
            font-weight: bold;
        }

        .LeftColumnStyle
        {
            padding:5px 10px 5px 10px; 
            border: 1px solid #d0d7e5;
            text-align: left;
        }

        .ColumnStyle
        {
            padding:5px 10px 5px 10px; 
            border: 1px solid #d0d7e5;
            text-align: center;
        }

        .ColumnStyleRed
        {
            padding:5px 10px 5px 10px; 
            border: 1px solid #d0d7e5;
            text-align: center;
            color: #ff0000;
        }

         .ColumnStyleLarge
        {
            padding:5px 10px 5px 10px; 
            border: 1px solid #d0d7e5;
            text-align: center;
            font-weight: bold;
            font-size: 15px;
        }

        .RowStyle
        {
            background-color: #ffffff;
        }

        .AlternateRowStyle
        {
            background-color: #e5e5e5;
        }

        .DataHeaderStyle
        {
            border: 1px solid #d0d7e5;
            text-align: center;
            padding: 0px 10px 0px 10px;
        }

        .PageHeader
        {
            font-size: 13px;
            font-weight: bold;
        }

        .ScopeHeaderPartStyle
        {
            border: 1px solid #d0d7e5;
            text-align: center;
            font-size: 13px;
            font-weight: bold;
            width: 140px;
        }

        .ScopeHeaderDescriptionStyle
        {
            border: 1px solid #d0d7e5;
            text-align: center;
            font-size: 13px;
            font-weight: bold;
        }
    </style>
    <script src="Scripts/Nightforce.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" style="padding: 0px 0px 0px 10px;" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
		<Scripts>
			<%--Needed for JavaScript IntelliSense in VS2010--%>
			<%--For VS2008 replace RadScriptManager with ScriptManager--%>
			<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
			<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
			<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
		</Scripts>
	</telerik:RadScriptManager>

    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" RestoreOriginalRenderDelegate="false">
	</telerik:RadAjaxManager>

    <script src="Scripts/jquery-ui-1.8.5.custom.min.js" type="text/javascript"></script>
    <div>
       <table cellpadding="0" cellspacing="0" border="0" width="940px">
            <tr valign="top">
                <td valign="top" style="width:570px;">
                    <img alt="Nightforce Velocity™ Reticle Calculator" src="Images/LogoSmall.png" />
                    <h2>
                        Nightforce Velocity&#0153 Reticle Calculator Data
                    </h2>
                </td>
                <td valign="middle" style="width:370px;padding-left:32px;">
                    <asp:LinkButton ID="PrintButton" OnClientClick="PrintResults();return false;" runat="server">
                        <img src="images/buttons/PrintOver.png" alt="Print Results" width="149" height="39" id="Image1" onmouseover="MM_swapImage('Image1','','Images/Buttons/PrintUp.png',1)" onmouseout="MM_swapImgRestore()" />
                    </asp:LinkButton>
                </td> 
            </tr>
        </table>
        <br />
        <table cellpadding="0" cellspacing="0" border="0" width="940px">
            <tr valign="top">
                <td valign="top" style="width:570px;padding-right:32px;">
                    <table cellpadding="0" cellspacing="0" width="100%" style="text-align:left; vertical-align:top;border: 1px solid #000000;">
                         <thead>
                            <tr valign="top" class="HeaderBackground">
                                <th class="HeaderStyle">
                                    <asp:Literal ID="VelocityHeader" runat="server"></asp:Literal>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="AlternateRowStyle">
                                <td class="ColumnStyle">
                                    <asp:Image ID="VelocityImage" runat="server" />
                                </td>
                            </tr>
                            <tr class="RowStyle">
                                <td class="ColumnStyleLarge">
                                    <asp:Literal ID="VelocityName" runat="server"></asp:Literal>
                                </td>
                            </tr>
                            <asp:Literal ID="AvailableScopes" runat="server"></asp:Literal>
                            <asp:Literal ID="OptimumText" runat="server"></asp:Literal>
                        </tbody>
                    </table>
                </td>
                <td valign="top" style="width:370px;">
                    <span style="color:#6f7380; font-size:15px;font-weight: bold;">
                        <asp:Literal ID="InformationTextHeader" runat="server"></asp:Literal>
                    </span>
                    <br />
                    <br />
                    <span style="font-size:13px;font-weight: bold;">
                        No matter how sophisticated and "smart" our reticle may be, shooting a game animal at extreme ranges involves serious ethical considerations. We encourage you to do your homework, select a bullet that will deliver optimum terminal performance at the intended distance, and please remember that all of your equipment -- including yourself -- needs to yield maximum performance to make those shots count.
                    </span>
                    <br />
                    <br />
                    <span style="color:#6f7380; font-size:15px;font-weight: bold;">
                        How to develop long-range shooting skills
                    </span>
                    <br />
                    <br />
                    <span style="font-size:13px;font-weight: bold;">
                        In a word, practice. Then practice some more. Wind is always a huge variable; nothing allows you to better understand the effects of wind downrange than practice. Time spent in the field shooting will repay you many times over.
                    </span>
                </td>
            </tr>
        </table>
        <telerik:RadAjaxPanel ID="RadAjaxPanel1" RestoreOriginalRenderDelegate="false" runat="server">
            <table cellpadding="0" cellspacing="0" border="0" width="940px">
                <tr valign="top">
                    <td valign="top" style="width:570px;">
                        <br />
                        <h3>The results of the recommended velocity reticle calculation are:</h3>
                        <asp:Label ID="DeviationTypeLabel" CssClass="PageHeader" runat="server" ToolTip="Standard Deviation Format" Text="Standard Deviation Format"></asp:Label>
                        <br />
                        <asp:RadioButton ID="MOARadio" AutoPostBack="true" runat="server" Text="MOA" Checked="True" oncheckedchanged="MOARadio_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="InchesRadio" AutoPostBack="true" runat="server" Text="Inches" oncheckedchanged="InchesRadio_CheckedChanged" />
                    </td>
                    <td valign="top" style="width:370px;padding-left:20px;">
                        <br />
                        <h3>The following inputs were used to calculate the recommended velocity reticle:</h3>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <table cellpadding="0" cellspacing="0" style="border: 1px solid #000000;">
                            <thead>
                                <asp:Literal ID="VelocityHeaders" runat="server"></asp:Literal>
                            </thead>
                            <tbody>
                                <asp:Literal ID="VelocityRows" runat="server"></asp:Literal>
                            </tbody>
                        </table>
                    </td>
                    <td valign="top" style="padding-left:20px;">
                        <asp:Literal ID="InputValues" runat="server"></asp:Literal>
                        <br />
                        <span style="font-size:13px;font-weight: bold;">
                        Please be aware that any changes to the inputs used above could result in performance changes of increased or decreased impact deviation.
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" valign="top">
                        <span style="font-size:13px;">
                            <asp:Literal ID="VelocityStatement" runat="server"></asp:Literal>
                            <asp:Literal ID="VelocityNote" runat="server"></asp:Literal>
                            <br />
                            <br />
                        </span>
                    </td>
                </tr>
            </table>
        </telerik:RadAjaxPanel>
    </div>
    </form>
</body>
</html>
