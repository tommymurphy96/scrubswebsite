<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Buncha_Scrubs.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        .altgrey:nth-child(odd) {
            background-color: dimgrey;
        }

        .blu {
            background-color: darkgreen;
        }

        .red {
            background-color: darkred;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="altgrey">
            <p>HOMEPAGE BANNER</p>
            <asp:FileUpload ID="bannerUpload" runat="server" />
            &nbsp<asp:Button ID="btnSaveBanner" runat="server" Text="Upload" OnClick="btnSaveBanner_Click" />
        </div>
        <div class="altgrey">
            <p>SHOP THIS BANNER</p>
            <asp:FileUpload ID="shopThisUpload" runat="server" />
            &nbsp<asp:Button ID="btnSaveShop" runat="server" Text="Upload" OnClick="btnSaveShop_Click" />
        </div>
        <div class="altgrey">

            <p>CAROUSEL BANNER</p>
            <asp:FileUpload ID="CarouselUpload" runat="server" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true">
                <asp:ListItem Text="social media" Value="~//Images//Carousel1.png"></asp:ListItem>
                <asp:ListItem Text="print of the week" Value="~//Images//Carousel2.png"></asp:ListItem>
                <asp:ListItem Text="featured bowtie" Value="~//Images/Carousel3.png"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Image ID="carouselImg" runat="server" ImageUrl="~/Images/Avery Bow Logo.png" />
            <asp:Button ID="btnCarouselAdd" runat="server" Text="Upload" OnClick="btnCarouselAdd_Click" />
        </div>
        <div class="altgrey">
            <p>COLLECTION BANNER</p>
            <asp:FileUpload ID="collectionUpload" runat="server" />
            &nbsp<asp:Button ID="btnSaveCollection" runat="server" Text="Upload" OnClick="btnSaveCollection_Click" />
        </div>
        <div class="altgrey">
            <p>AW LOOKBOOK</p>
            <div class="blu">
                <p>ADD</p>
                <asp:FileUpload ID="AWLookBookUpload" runat="server" />
                &nbsp<asp:Button ID="btnAWLookBookAdd" runat="server" Text="Upload" OnClick="btnAWLookBookAdd_Click" />
                <%--&nbsp<asp:TextBox ID="txtAWLookbook" runat="server"></asp:TextBox>--%>
            </div>
            <div class="red">
                <p>DELETE</p>
                <asp:DropDownList runat="server" ID="ddlAW" AutoPostBack="true"></asp:DropDownList>
                <asp:Image ID="AWImage" runat="server" ImageUrl="~/Images/Avery Bow Logo.png" />
                <asp:Button ID="btnAWLookBookDelete" runat="server" Text="Delete" OnClick="btnAWLookBookDelete_Click" />
            </div>
        </div>
        <div class="altgrey">
            <p>SS LOOKBOOK</p>
            <div class="blu">
                <p>ADD</p>
                <asp:FileUpload ID="SSLookBookUpload" runat="server" />
                &nbsp<asp:Button ID="btnSSLookBookAdd" runat="server" Text="Upload" OnClick="btnSSLookBookAdd_Click" />
                <%--&nbsp<asp:TextBox ID="txtSSLookbook" runat="server"></asp:TextBox>--%>
            </div>
            <div class="red">
                <p>DELETE</p>
                <asp:DropDownList runat="server" ID="ddlSS" AutoPostBack="true"></asp:DropDownList>
                <asp:Image ID="SSImage" runat="server" ImageUrl="~/Images/Avery Bow Logo.png" />
                <asp:Button ID="btnSSLookBookDelete" runat="server" Text="Delete" OnClick="btnSSLookBookDelete_Click" />
            </div>
        </div>
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
