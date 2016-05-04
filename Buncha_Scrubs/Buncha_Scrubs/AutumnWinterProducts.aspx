<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutumnWinterProducts.aspx.cs" Inherits="Buncha_Scrubs.AutumnWinterProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Buncha Scrubs</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom.css" rel="stylesheet" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

      <script>
          $(document).ready(function () {
              $(".dropdown").on("hide.bs.dropdown", function () {
                  $(".test").html('Collection <span class="caret"></span>');
              });
              $(".dropdown").on("show.bs.dropdown", function () {
                  $(".test").html('Collection <span class="caret caret-up"></span>');
              });

              $(".dropdown1").on("hide.bs.dropdown", function () {
                  $(".test1").html('Connect <span class="caret"></span>');
              });
              $(".dropdown1").on("show.bs.dropdown", function () {
                  $(".test1").html('Connect <span class="caret caret-up"></span>');
              });
          });
    </script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>


    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default  navbar-fixed-top navbar-inverse" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.aspx"><img alt="Logo" src="Images/candian bowtie.png" height="30" /></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="Default.aspx">Home</a></li>
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle dropdown test" data-toggle="dropdown">Collection<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Autumn/WInter 2016</li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Prints</a></li>
                            <li><a href="#">Products</a></li>
                             <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Spring/Summer 2017</li>
                             <li role="separator" class="divider"></li>
                            <li><a href="#">Prints</a></li>
                            <li><a href="#">Products</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Video</a></li>
                    <li class="dropdown1">
                        <a href="#" class="dropdown-toggle dropdown1 test1" data-toggle="dropdown">Connect<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Instagram</a></li>
                            <li><a href="#">Snapchat</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Weibo</a></li>
                            <li><a href="#">Youtube</a></li>
                        </ul>
                    </li>
                    <li><a href="#">About</a></li>
               </ul>
            </div>
        </div>
    </div>
  </div>
  <br />
  
        <!-- start of gallery -->
        
        <asp:Repeater ID="rptGallery" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 col-md-4 col-sm-6">
                <img src='<%#Eval("Path")%>' />
                <br />
                <a href='<%#Eval("Link")%>'>shopifybtn here</a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
        <!-- end of gallery -->
    </form>
</body>
</html>
