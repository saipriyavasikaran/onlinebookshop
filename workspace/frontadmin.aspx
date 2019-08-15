<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="frontadmin.aspx.cs" Inherits="frontadmin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
    
    
    
        <br />
        <br />
        <asp:Menu ID="Menu1" runat="server" Height="328px" Width="139px" 
            onmenuitemclick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="~/addbooks.aspx" Text="BOOKS" Value="ADD BOOKS">
                    <asp:MenuItem NavigateUrl="~/addbooks.aspx" Text="Add Books" Value="Add Books">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/delete books.aspx" Text="Delete Books" 
                        Value="Delete Books"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/updatebook.aspx" Text="UPDATE BOOKS" 
                    Value="UPDATE BOOKS"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/stockmainta.aspx" Text="STOCK DETAILS" 
                    Value="STOCK DETAILS"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Custmainta.aspx" Text="CUSTOMER DETAILS" 
                    Value="CUSTOMER DETAILS"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/feedmain.aspx" Text="FEEDBACKS" Value="FEEDBACKS">
                </asp:MenuItem>
                <asp:MenuItem Text="ADD OFFERS" Value="ADD OFFERS" NavigateUrl="~/offer.aspx"></asp:MenuItem>
                <asp:MenuItem Text="SALES REPORT" Value="New Item" 
                    NavigateUrl="~/salesoforder.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/mail.aspx" Text="SEND MAIL" Value="SEND MAIL">
                </asp:MenuItem>
                <asp:MenuItem Text="CATEGORY" Value="CATEGORY">
                    <asp:MenuItem NavigateUrl="~/add category.aspx" Text="Add Category" 
                        Value="Add Category"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/delete category.aspx" Text="Delete Category" 
                        Value="Delete Category"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/add credit card.aspx" 
                    Text="Add Credit Card Details" Value="Add Credit Card Details">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/add credit amt.aspx" Text="Add Credit Card Amount" 
                    Value="Add Credit Card Amount"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/secondhand.aspx" Text="Secondhand Books" 
                    Value="Secondhand Books"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />
        <br />
        <br />
        <br />
    
    
    
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="height: 438px; width: 929px; font-weight: bold; font-style: italic; color: #003300;">
       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Logout</asp:HyperLink>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        WELCOME&nbsp;&nbsp; TO&nbsp; ADMIN......................<br />
&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="267px" Width="754px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </div>
</asp:Content>

