<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="FinalProject.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Css/StyleSheet.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
            <style type="text/css">
                .auto-style1 {
                    margin-right: 0px;
                    margin-top: 42px;
                }
                .auto-style2 {
                    margin-right: 0px;
                    margin-top: 0px;
        margin-bottom: 0px;
    }
            .auto-style3 {
        margin-right: 0px;
        margin-top: 42px;
        margin-bottom: 0px;
    }
                .auto-style4 {
                    position: relative;
                    width: 150px;
                    min-height: 1px;
                    -ms-flex: 0 0 25%;
                    flex: 0 0 25%;
                    max-width: 25%;
                    left: 16px;
                    top: -8px;
                    height: 28px;
                    margin-right: 0px;
                    margin-top: 0px;
                    margin-bottom: 0px;
                    padding-left: 15px;
                    padding-right: 15px;
                }
            </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <h3>
        <asp:Label ID="Label2" runat="server" Text="You Have Successfully Login"></asp:Label></h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        &nbsp;&nbsp;
        
        
        <br />
        
    <h3>Select A Brand:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Product_Id" Height="35px" Width="291px">
        </asp:DropDownList>
        </h3>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model], [Product_Id] FROM [Product]"></asp:SqlDataSource>
        </p>
        <p>&nbsp;</p>
        <p>
            &nbsp;<div class="row">

                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="134px" Width="288px">
                    <Fields>
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Tech_spec_1" HeaderText="Tech_spec_1" SortExpression="Tech_spec_1" />
                        <asp:BoundField DataField="Tech_spec_2" HeaderText="Tech_spec_2" SortExpression="Tech_spec_2" />
                        <asp:BoundField DataField="Tech_spec_3" HeaderText="Tech_spec_3" SortExpression="Tech_spec_3" />
                        <asp:BoundField DataField="Tech_spec_4" HeaderText="Tech_spec_4" SortExpression="Tech_spec_4" />
                        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                        <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:ImageField DataImageUrlField="Images" DataImageUrlFormatString="~/Images/{0}">
                        </asp:ImageField>
                    </Fields>
                </asp:DetailsView>   </div>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.Model, Product.Description, Desc_table.Tech_spec_1, Desc_table.Tech_spec_2, Desc_table.Tech_spec_3, Desc_table.Tech_spec_4, Desc_table.Color, Desc_table.Warranty, Desc_table.Price, Product.Images FROM Desc_table INNER JOIN Product ON Desc_table.Product_id = Product.Product_Id WHERE (Desc_table.Product_id = @Product_Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Product_Id" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <div class="row">
                <asp:Label ID="Label3" runat="server" Text="Quantity" CssClass="col-2"></asp:Label>

               <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Height="29px" Width="160px" CssClass="col-4"></asp:TextBox>
                    <br /></div><br />
            <div class="row">
                  
                    <asp:Button ID="Button1" runat="server" Height="26px" Width="126px" OnClick="Button1_Click" Text="Add To Cart" CssClass="col-2" />
                    &emsp;

        <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Logout" Width="126px" CssClass="col-2" />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Invalid Number" ForeColor="#CC0000" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator></div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Quantity is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />

                    
             
    </form> 
</asp:Content>
