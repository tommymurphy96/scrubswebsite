<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Buncha_Scrubs.Login" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Avery Bow Admin Login</h1>
        <asp:Label ID="lblUser" runat="server" Text="Username: "></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblPass" runat="server" Text="Password: "></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> &nbsp <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
