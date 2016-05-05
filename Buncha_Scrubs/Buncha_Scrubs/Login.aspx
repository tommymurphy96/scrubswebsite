<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Buncha_Scrubs.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>


<body>


    <form method="post" name="Login_Form">
    <table border="0" class="Table">
    <?php if(isset($msg)){?>
    <tr>
      <td colspan="2"><?php echo $msg;?></td>
    </tr>
    <?php } ?>
    <tr>
      <td colspan="2"><h3>Login</h3></td>
    </tr>
    <tr>
      <td>Username</td>
      <td><input name="Username" type="text" class="Input"/></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input name="Password" type="password" class="Input"/></td>
    </tr>
    <tr>
      <td> </td>
      <td><input name="Submit" type="submit" value="Login" class="Button3"/></td>
    </tr>
    </table>
    </form>
</body>
</html>
