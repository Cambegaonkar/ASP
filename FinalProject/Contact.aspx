<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProject.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Css/StyleSheet.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <title>Contact Us</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="small">
        
            <h3>
                How to contact us
            </h3>
            <p>
                If you ever have any questions or comments about our products,<br />
                please be sure to contact us in whatever way is most convenient for you.
            </p>
            <div class="row">
                    <div class="col-3">Phone:</div>
                    <div class="col-9">1-111-111-1111<br />Weekdays, 8:00 AM to 5:00 PM Pacific Time</div>
            </div>
            <div class="row">
                    <div class="col-3">Email:</div>
                    <div class="col-9">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="mailto:mobileplanet@mobileplanet.com">mobileplanet@smobileplanet.com</asp:HyperLink></div>
            </div>
            <div class="row">
                    <div class="col-3">Fax:</div>
                    <div class="col-9">1-559-555-2732</div>
            </div>
            <div class="row">
                    <div class="col-3">Address</div>
                    <div class="col-9">Mobile Planet, Inc.<br />1500 E. Main Street<br />Weber, New York 93710.</div>
            </div>
        </div>
</form>
</asp:Content>
