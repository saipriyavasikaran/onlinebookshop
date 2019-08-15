<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="overview.aspx.cs" Inherits="overview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 235px;
            height: 38px;
        }
        .style12
        {
            width: 236px;
            height: 38px;
        }
        .style13
        {
            width: 235px;
            height: 27px;
        }
        .style14
        {
            width: 236px;
            height: 27px;
        }
        .style15
        {
            width: 235px;
            height: 31px;
        }
        .style16
        {
            width: 236px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="width: 368px">

    <br />
    &nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="562px" 
            ImageUrl="~/design/17.jpeg" Width="282px" />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />

</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <div style="width: 717px; height: 733px;">

    <table id="hepl">
    <tr>
    <td class="style13">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="134px" 
            onclick="ImageButton1_Click" Width="142px" />
        </td><td class="style14">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="129px" 
                onclick="ImageButton2_Click" Width="149px" />
        </td><td class="style13">&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" 
                Height="121px" onclick="ImageButton3_Click" Width="153px" />
            &nbsp;</td>
    </tr>
    
    <tr>
    <td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Maths"></asp:Label>
        &nbsp;</td><td class="style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="programming"></asp:Label>
            &nbsp;</td><td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="English"></asp:Label>
            &nbsp;</td>
    </tr>
    
    <tr>
    <td class="style15">
        <asp:ImageButton ID="ImageButton4" runat="server" Height="129px" 
            onclick="ImageButton4_Click" Width="143px" />
        </td><td class="style16">
            <asp:ImageButton ID="ImageButton5" runat="server" Height="125px" 
                onclick="ImageButton5_Click" style="margin-right: 0px" Width="148px" />
        </td><td class="style15">
            <asp:ImageButton ID="ImageButton6" runat="server" Height="116px" 
                onclick="ImageButton6_Click" Width="161px" />
        </td>
    </tr>
    
    <tr>
    <td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Chemistry"></asp:Label>
        &nbsp;</td><td class="style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Physics"></asp:Label>
            &nbsp;</td><td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Novel"></asp:Label>
            &nbsp;</td>
    </tr>
    
    <tr>
    <td class="style15">
        <asp:ImageButton ID="ImageButton7" runat="server" Height="133px" 
            onclick="ImageButton7_Click" Width="146px" />
        </td><td class="style16">
            <asp:ImageButton ID="ImageButton8" runat="server" Height="133px" 
                Width="146px" onclick="ImageButton8_Click" />
        </td><td class="style15">
            <asp:ImageButton ID="ImageButton9" runat="server" height="133px"
            ImageUrl="~/design/35.jpeg" 
                onclick="ImageButton9_Click" Width="146px"  />
        </td>
    </tr>
    
    <tr>
    <td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Sort Story"></asp:Label>
        &nbsp;</td><td class="style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server">Secondhandbooks</asp:Label>
            &nbsp;</td><td class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" 
                runat="server" Text="story books"></asp:Label>
&nbsp;&nbsp;</td>
    </tr>
    
        <tr>
            <td>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frontcust.aspx">Back</asp:HyperLink>

            </td>
        </tr>
    
    </table>

</div>
</asp:Content>

