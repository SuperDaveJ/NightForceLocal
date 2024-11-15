<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Nightforce.ReticleCalculator.ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Banner" title="Nightforce Velocity™ Reticle Calculator">
    </div>
    <br />
    <div id="Content">
        <div id="PageTitle">
            <br />
            <br />
            <asp:Literal ID="SystemErrorMessage" runat="server"></asp:Literal>
            <br />
            <br />
            <br />
            If you would like to attempt another calculation, please click <a href="Default.aspx">here</a>.
        </div>
    </div>
</asp:Content>
