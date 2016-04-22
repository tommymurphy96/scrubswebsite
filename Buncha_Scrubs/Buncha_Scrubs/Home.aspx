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
   
    <script type="text/javascript">
<!--
    // Customize the widget by editing the fields below
    // All fields are required

    // Your Feedity RSS feed URL
    feedity_widget_feed = "https://feedity.com/yoursite/feedid.rss";

    // Number of items to display in the widget
    feedity_widget_numberofitems = "5";

    // Show feed item description (values: yes or no)
    feedity_widget_showdescription = "no";

    // Show feed item published date (values: yes or no)
    feedity_widget_showdate = "no";

    // Widget box width (in px, pt, em, or %)
    feedity_widget_width = "250px";

    // Widget box background color in hex or by name (eg: #ffffff or white)
    feedity_widget_backcolor = "#ffffff";

    // Widget text & link color in hex or by name (eg: #000000 or black)
    feedity_widget_fontcolor = "#000000";
    //-->
    </script>

    <script type="text/javascript" src="https://feedity.com/js/widget.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#myCarousel").carousel();
        });
    </script>

    <script type='text/javascript'>

        $(function () {

            // Stick the #nav to the top of the window

            var nav = $('#nav');

            var navHomeY = nav.offset().top;

            var isFixed = false;

            var $w = $(window);

            $w.scroll(function () {

                var scrollTop = $w.scrollTop();

                var shouldBeFixed = scrollTop > navHomeY;

                if (shouldBeFixed && !isFixed) {

                    nav.css({

                        position: 'fixed',

                        top: 0,

                        left: nav.offset().left,

                        width: nav.width()

                    });

                    isFixed = true;

                }

                else if (!shouldBeFixed && isFixed) {

                    nav.css({

                        position: 'static'

                    });

                    isFixed = false;

                }

            });

        });

</script>

</head>

<body>
    <div class="container-fluid">
        <img src="Logo/main logo.png" />
        <div id="navWrap">
            <div id="nav">
            <div class="container-fluid">
                <div id="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Avery Bow</a>
                </div>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="nav navbar-nav">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="Collection.aspx">Collection</a></li>
                        <li><a href="Catalog.aspx">Catalog</a></li>
                        <li><a href="Video.aspx">Video</a></li>
                        <li><a href="Connect.aspx">Connect</a></li>
                        <li><a href="About.aspx">About</a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
    </div>

    <div class="container-fluid">

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

    <a href="AB.xml"><img src="RSS Button/rss-button.gif" width="68" height="25" border="0" /></a>

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
