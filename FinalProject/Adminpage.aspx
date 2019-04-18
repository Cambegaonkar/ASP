<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Adminpage.aspx.cs" Inherits="FinalProject.Adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Css/StyleSheet.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <div class="one">


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="56px" Width="148px" DataSourceID="SqlDataSource1" DataTextField="Model" DataValueField="Product_Id" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_Id], [Model] FROM [Product]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="74px" Width="549px" DataKeyNames="Desc_id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                
                <asp:BoundField DataField="Desc_id" HeaderText="Desc_id" SortExpression="Desc_id" ReadOnly="True" />
                <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" />
                <asp:BoundField DataField="Tech_spec_1" HeaderText="Tech_spec_1" SortExpression="Tech_spec_1" />
                <asp:BoundField DataField="Tech_spec_2" HeaderText="Tech_spec_2" SortExpression="Tech_spec_2" />
                <asp:BoundField DataField="Tech_spec_3" HeaderText="Tech_spec_3" SortExpression="Tech_spec_3" />
                <asp:BoundField DataField="Tech_spec_4" HeaderText="Tech_spec_4" SortExpression="Tech_spec_4" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Desc_table] WHERE ([Product_id] = @Product_id)" DeleteCommand="DELETE FROM [Desc_table] WHERE [Desc_id] = @original_Desc_id AND (([Warranty] = @original_Warranty) OR ([Warranty] IS NULL AND @original_Warranty IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND [Product_id] = @original_Product_id AND (([Tech_spec_1] = @original_Tech_spec_1) OR ([Tech_spec_1] IS NULL AND @original_Tech_spec_1 IS NULL)) AND (([Tech_spec_2] = @original_Tech_spec_2) OR ([Tech_spec_2] IS NULL AND @original_Tech_spec_2 IS NULL)) AND (([Tech_spec_3] = @original_Tech_spec_3) OR ([Tech_spec_3] IS NULL AND @original_Tech_spec_3 IS NULL)) AND (([Tech_spec_4] = @original_Tech_spec_4) OR ([Tech_spec_4] IS NULL AND @original_Tech_spec_4 IS NULL))" InsertCommand="INSERT INTO [Desc_table] ([Desc_id], [Warranty], [Color], [Price], [Product_id], [Tech_spec_1], [Tech_spec_2], [Tech_spec_3], [Tech_spec_4]) VALUES (@Desc_id, @Warranty, @Color, @Price, @Product_id, @Tech_spec_1, @Tech_spec_2, @Tech_spec_3, @Tech_spec_4)" UpdateCommand="UPDATE [Desc_table] SET [Warranty] = @Warranty, [Color] = @Color, [Price] = @Price, [Product_id] = @Product_id, [Tech_spec_1] = @Tech_spec_1, [Tech_spec_2] = @Tech_spec_2, [Tech_spec_3] = @Tech_spec_3, [Tech_spec_4] = @Tech_spec_4 WHERE [Desc_id] = @original_Desc_id AND (([Warranty] = @original_Warranty) OR ([Warranty] IS NULL AND @original_Warranty IS NULL)) AND (([Color] = @original_Color) OR ([Color] IS NULL AND @original_Color IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND [Product_id] = @original_Product_id AND (([Tech_spec_1] = @original_Tech_spec_1) OR ([Tech_spec_1] IS NULL AND @original_Tech_spec_1 IS NULL)) AND (([Tech_spec_2] = @original_Tech_spec_2) OR ([Tech_spec_2] IS NULL AND @original_Tech_spec_2 IS NULL)) AND (([Tech_spec_3] = @original_Tech_spec_3) OR ([Tech_spec_3] IS NULL AND @original_Tech_spec_3 IS NULL)) AND (([Tech_spec_4] = @original_Tech_spec_4) OR ([Tech_spec_4] IS NULL AND @original_Tech_spec_4 IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Desc_id" Type="Int32" />
                <asp:Parameter Name="original_Warranty" Type="Double" />
                <asp:Parameter Name="original_Color" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Product_id" Type="Int32" />
                <asp:Parameter Name="original_Tech_spec_1" Type="String" />
                <asp:Parameter Name="original_Tech_spec_2" Type="String" />
                <asp:Parameter Name="original_Tech_spec_3" Type="String" />
                <asp:Parameter Name="original_Tech_spec_4" Type="String" />
            </DeleteParameters>
            <InsertParameters>
<asp:Parameter Name="Desc_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Warranty" Type="Double" />
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="Tech_spec_1" Type="String" />
                <asp:Parameter Name="Tech_spec_2" Type="String" />
                <asp:Parameter Name="Tech_spec_3" Type="String" />
                <asp:Parameter Name="Tech_spec_4" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Product_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
<asp:Parameter Name="Warranty" Type="Double"></asp:Parameter>
                <asp:Parameter Name="Color" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="Tech_spec_1" Type="String" />
                <asp:Parameter Name="Tech_spec_2" Type="String" />
                <asp:Parameter Name="Tech_spec_3" Type="String" />
                <asp:Parameter Name="Tech_spec_4" Type="String" />
                <asp:Parameter Name="original_Desc_id" Type="Int32" />
                <asp:Parameter Name="original_Warranty" Type="Double" />
                <asp:Parameter Name="original_Color" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Product_id" Type="Int32" />
                <asp:Parameter Name="original_Tech_spec_1" Type="String" />
                <asp:Parameter Name="original_Tech_spec_2" Type="String" />
                <asp:Parameter Name="original_Tech_spec_3" Type="String" />
                <asp:Parameter Name="original_Tech_spec_4" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />



    </div>
    </form>
</asp:Content>
