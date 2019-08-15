<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="make payment.aspx.cs" Inherits="make_payment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Payment Options" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" 
                    onclick="Button1_Click" Text="Cash On Delivery" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#66CCFF" 
                    onclick="Button2_Click" Text="Credit Card" />
            </td>
        </tr>
    </table>
</asp:Content>

