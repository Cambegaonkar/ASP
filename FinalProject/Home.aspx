<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Css/StyleSheet.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="container">
        <asp:Image ID="ImageAjax" runat="server" ImageUrl="~/Images/source.gif" AlternateText="Please wait" visible=true />
        </div>

        <div class="row">
            <div class="col-sm-6">
                Welcome to the Mobile Planet directory of gadget trade-in providers.
                We'll look at a few of the best trade-in options where you can get top dollar for your devices.
                The world is being re-shaped by the convergence of social, mobile, cloud, big data, community and other powerful forces.
                The combination of these technologies unlocks an incredible opportunity to connect everything together in a new way and is dramatically transforming the way we live and work.
                The best you get at the amazing rate with special offers.
                Every service is different, and their pricing changes by the day.
                They also assign values based on the condition of the device you're trading in, and even its color.
                That means you're going to have to shop around.
            </div>

            <div class="col-sm-6">
                <img src="Images/wiphone.jpg" width="450px" height="450px" />
            </div>
        </div>
        <br />

        <div class="row">
               <div class="col-sm-6">
                   <img src="Images/image1.jpg" width="450px" height="450px" />
            </div>

            <div class="col-sm-6">
                The two parts of technology that lower the threshold for activism and technology is the Internet and the mobile phone. Anyone who has a cause can now mobilize very quickly.
                The majority of internet usage will be done via a mobile device and for most people the mobile web will be their primary, if not their only, way of experiencing the internet.
                The mobile device has become our communications hub, our diary, our entertainment portal, our primary source of media consumption, our wallet and our gateway to real-time information tailored to our needs.
                The revolution is now!
            </div>
        </div>
</form>
</asp:Content>
