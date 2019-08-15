<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatebook.aspx.cs" Inherits="updatebook" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 334px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>

</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="width: 922px">

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Larger" Text="Update Books"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frontadmin.aspx">back</asp:HyperLink>
    <br />
    <table>
    <tr>
    <td class="style10"></td><td></td><td class="style9"></td>
    </tr>
    <tr>
    <td class="style10">&nbsp; NAME OF THE BOOK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="View" 
            Width="72px" />
        </td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;AUTHER OF THE BOOK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="199px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        CATEGORY&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="198px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PRICE</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="197px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        STOCK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="196px" 
            ontextchanged="TextBox4_TextChanged"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        IMAGE &nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                        </td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        <asp:Image ID="Image1" runat="server" Height="147px" Width="203px" />
        </td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PUBLISHER&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="203px" 
            ontextchanged="TextBox5_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">PREVIEW OF THE BOOK</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="200px" 
            ontextchanged="TextBox6_TextChanged"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" />
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        &nbsp;</td>
    </tr>
    </table>
    <br />


</div>
</asp:Content>

