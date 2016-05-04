<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Buncha_Scrubs.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>My Image Galery</h1>
        <asp:DataList ID="dlstImages" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" style="width:200px" ImageUrl='<%# Eval("Name", "~/Prints/{0}") %>' />
                <br />
                <%# Eval("Name") %><br />
                <a href='FileUploads.aspx?fileToDelete=<%# Eval("Name")%>'>Delete</a> 
            </ItemTemplate>
        </asp:DataList>

        <hr/>
        <asp:FileUpload ID="fupUpload" runat="server" /> &nbsp<asp:Button ID="btnSave" runat="server" Text="Upload" OnClick="btnSave_Click" />

    </div>
    </form>
</body>
</html>--%>
