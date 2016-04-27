<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Buncha_Scrubs.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Avery Bow Canada</title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="Content/custom.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
    <link href="Style/Main.css" rel="stylesheet" />
   

    <script type="text/javascript" src="https://feedity.com/js/widget.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#myCarousel").carousel();
        });
    </script>
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

</head>

<body>

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
                    <li class="active"><a href="Home.aspx">Home</a></li>
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


    <div class="container-fluid">
    <div class="col-lg-12 col-xs-12 col-md-12">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Carousel indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
                <li data-target="#myCarousel" data-slide-to="7"></li>
            </ol>
            <!-- Wrapper for carousel items -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Prints/AW16 1.jpeg" alt="First Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 2.jpeg" alt="Second Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 3.jpeg" alt="Third Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 4.jpeg" alt="Fourth Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 5.jpeg" alt="Fifth Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 6.jpeg" alt="Sixth Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 7.jpeg" alt="Seventh Slide" />
                </div>
                <div class="item">
                    <img src="Prints/AW16 8.jpeg" alt="Eighth Slide" />
                </div>
            </div>
            <!-- Carousel controls -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    </div>
    
    <hr />
    <div class="row">
        <div class="col-xs-12 col-xm-12 col-lg-12">
            <footer>
                <p>&copy;Copyright 2016 Avery Bow Canada</p>
            </footer>
        </div>
    </div>

     
</body>
</html>
