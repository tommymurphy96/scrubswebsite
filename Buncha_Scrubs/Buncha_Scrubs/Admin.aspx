<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Buncha_Scrubs.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>HOMEPAGE BANNER</p>
        <asp:FileUpload ID="bannerUpload" runat="server" />
        &nbsp<asp:Button ID="btnSaveBanner" runat="server" Text="Upload" OnClick="btnSaveBanner_Click" />

        <p>SHOP THIS BANNER</p>
        <asp:FileUpload ID="shopThisUpload" runat="server" />
        &nbsp<asp:Button ID="btnSaveShop" runat="server" Text="Upload" OnClick="btnSaveShop_Click" />

        <p>COLLECTION BANNER</p>
        <asp:FileUpload ID="collectionUpload" runat="server" />
        &nbsp<asp:Button ID="btnSaveCollection" runat="server" Text="Upload" OnClick="btnSaveCollection_Click" />

        <p>CAROUSEL BANNER</p>
        <p>//ask gavin</p>

        <p>AW LOOKBOOK</p>
        <p>ADD</p>
        <asp:FileUpload ID="AWLookBookUpload" runat="server" />
        &nbsp<asp:Button ID="btnAWLookBookAdd" runat="server" Text="Upload" OnClick="btnAWLookBookAdd_Click" />
        <p>DELETE</p>
        <asp:DropDownList runat="server" ID="ddlAW"></asp:DropDownList>
        <p>//picture of thing goes here</p>
        <asp:Button ID="btnAWLookBookDelete" runat="server" Text="Delete" OnClick="btnAWLookBookDelete_Click" />


        <p>SS LOOKBOOK</p>
        <p>ADD</p>
        <asp:FileUpload ID="SSLookBookUpload" runat="server" />
        &nbsp<asp:Button ID="btnSSLookBookAdd" runat="server" Text="Upload" OnClick="btnSSLookBookAdd_Click" />
       <p>DELETE</p>
        <asp:DropDownList runat="server" ID="ddlSS"></asp:DropDownList>
        <p>//picture of thing goes here</p>
        <asp:Button ID="btnSSLookBookDelete" runat="server" Text="Delete" OnClick="btnSSLookBookDelete_Click" />

        <%--<div>
        <h1>My Image Galery</h1>
        <asp:DataList ID="dlstImage" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" style="width:200px" ImageUrl='<%# Eval("Name", "~/Prints/{0}") %>' />
                <br />
                <%# Eval("Name") %><br />
                <a href='FileUploads.aspx?fileToDelete=<%# Eval("Name")%>'>Delete</a> 
            </ItemTemplate>
        </asp:DataList>

        <hr/>
        <asp:FileUpload ID="fupUpload" runat="server" /> &nbsp<asp:Button ID="btnSave" runat="server" Text="Upload" OnClick="btnSave_Click" />

    </div>--%>
    </form>
</body>
</html>
