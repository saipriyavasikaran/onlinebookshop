<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 155px;
        }
    .style10
    {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 462px">


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <br />
        <br />
        <br />
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
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="width: 589px; height: 489px;">

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
            ImageUrl="~/img/loh.jpeg" Width="446px" />
    <br />
    <table style="height: 337px; width: 509px">
    <tr>
    <td class="style9"></td><td></td><td class="style10"></td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        USERNAME&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter valid name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PASSWORD&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="valid password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        &nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
            Width="65px" style="height: 26px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustRegister.aspx">New 
        Customer</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/fpass.aspx">Forgot 
        password</asp:HyperLink>
        </td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style9">&nbsp;</td><td>&nbsp;</td><td class="style10">&nbsp;</td>
    </tr>
    
    </table>
        <br />
        <br />
    <br />
    

</div>
</asp:Content>

