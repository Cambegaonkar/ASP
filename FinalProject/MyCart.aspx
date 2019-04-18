<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="FinalProject.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Css/StyleSheet.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
           <div class="cont">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Product List:</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:ListBox ID="lb_display_contact" runat="server" CssClass="auto-style3" Height="98px" Width="496px"></asp:ListBox></td>
                    <td class="auto-style3">
                        <asp:Button ID="btn_remove" runat="server" CssClass="btn btn-primary" Text="Remove Product" Width="160px" />
                        <br />
                        <br />
                        <asp:Button ID="btn_emptyList" runat="server" CssClass="btn btn-primary" Text="Empty List" Width="160px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <asp:Button ID="btn_continue" runat="server" CssClass="btn btn-primary" Text="Continue Shopping" Width="240px" OnClick="btn_continue_Click"/>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <br />
                         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
