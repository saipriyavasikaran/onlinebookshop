<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="secondhand.aspx.cs" Inherits="secondhand" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image2" runat="server" Height="119px" 
        ImageUrl="~/design/45.jpeg" Width="155px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image3" runat="server" Height="397px" 
        ImageUrl="~/design/17.jpeg" Width="256px" />
    <br />
    <br />

</div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <div style="width: 809px">


<script type="text/javascript">

    function previewFile()
    {
        
        var preview = document.querySelector('#<%=Image1.ClientID %>');
        var file = document.querySelector('#<%=FileUpload1.ClientID %>').files[0];
        var reader = new FileReader();
        
        reader.onloadend = function()
        {
            preview.src = reader.result;
        }
        if(file)
        {
            reader.readAsDataURL(file);
        }
        else
        {
            preview.src =" ";
        }
     }
     
 </script>
 

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Larger" Text="Second Hand Books"></asp:Label>
 

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/frontadmin.aspx">back</asp:HyperLink>
    <br />
    <br />
    <table>
    <tr>
    <td class="style10"></td><td></td><td class="style9"></td>
    </tr>
    <tr>
    <td class="style10">&nbsp; NAME OF THE BOOK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        &nbsp;</td>
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
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="198px">
            <asp:ListItem>----select----</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Chemistry</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
            <asp:ListItem>Novels</asp:ListItem>
            <asp:ListItem>Programing</asp:ListItem>
            <asp:ListItem>Sort Story</asp:ListItem>
            <asp:ListItem>Maths</asp:ListItem>
        </asp:DropDownList>
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
        <asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        IMAGE &nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server"   onchange="previewFile()" />
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        <asp:Image ID="Image1" runat="server" Height="147px" Width="203px" />
        </td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PUBLISHER&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="203px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">PREVIEW OF THE BOOK</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" 
            Width="72px" />
        </td>
    </tr>
    </table>
    <br />

</div>
</asp:Content>

