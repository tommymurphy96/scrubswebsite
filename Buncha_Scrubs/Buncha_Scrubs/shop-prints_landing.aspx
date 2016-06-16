<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop-prints_landing.aspx.cs" Inherits="Buncha_Scrubs.WebForm5" %>

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
    <link href="css/Custom.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/all.min.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
     <!-- Begin MailChimp Signup Form -->
    <link href="//cdn-images.mailchimp.com/embedcode/horizontal-slim-10_7.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
	    #mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; width:100%;}
	    /* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
    </style> 
      <script>
          $(document).ready(function () {
              $(".dropdown").on("hide.bs.dropdown", function () {
                  $(".test").html('LookBook <span class="caret"></span>');
              });
              $(".dropdown").on("show.bs.dropdown", function () {
                  $(".test").html('LookBook <span class="caret caret-up"></span>');
              });

              $(".dropdown1").on("hide.bs.dropdown", function () {
                  $(".test1").html('Shop-Prints <span class="caret"></span>');
              });
              $(".dropdown1").on("show.bs.dropdown", function () {
                  $(".test1").html('Shop-Prints <span class="caret caret-up"></span>');
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
   <%-- <div>--%>

          <header class="site-header" role="banner">
              <div class="header-bottom">
                  <div class="container">
                      <div class="header-panel">
                          <div class="row">
                              <h1 class="header-logo col-xs-12">
                                  <a href="default.aspx">
                                      <img id="brand-logo" src="Images/Avery Bow Logo.png" alt="Avery Bow" /> 
                                  </a>
                              </h1>
                          </div>
                      </div>
                  </div>
                  <div class="navbar navbar-default navbar-inverse" role="navigation">
                      <div class="container">
                          <div class="navbar-header">
                              <button type="button" class="navbar-toggle pull-left" data-toggle="collapse" data-target=".navbar-collapse"> 
                                  <span class="sr-only">Toggle Navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                              </button>
                              <%--<a class="navbar-brand" href="Home.aspx"></a>--%>
                          </div>
                          <div class="navbar-collapse collapse">
                              <ul class="nav navbar-nav">
                                  <li class="dropdown"><a href="#" class="dropdown-toggle test" data-toggle="dropdown">LookBook<span class="caret"></span></a>
                                      <ul class="dropdown-menu">
                                          <li><a href="#">Automn/Winter 2016</a></li>
                                          <li><a href="#">Spring/Summer 2017</a></li>
                                      </ul>
                                  </li>
                                  <li class="dropdown1"><a href="#" class="dropdown-toggle dropdown1 test1" data-toggle="dropdown">Shop-Prints<span class="caret"></span></a>
                                      <ul class="dropdown-menu">
                                          <li><a href="#">Fish Dentures</a></li>
                                          <li><a href="#">Hives</a></li>
                                          <li><a href="#">Summer Nights</a></li>
                                          <li><a href="#">Montogne Chaqul</a></li>
                                          <li><a href="#">Naughtical Bow</a></li>
                                          <li><a href="#">Garffiti Blue</a></li>
                                          <li><a href="#">Garffiti Green</a></li>
                                          <li><a href="#">Garffiti Orange</a></li>
                                          <li><a href="#">Garffiti Pink</a></li>
                                          <li><a href="#">Tibal Blue</a></li>
                                          <li><a href="#">Tribal Brown</a></li>
                                          <li><a href="#">Monochrome Pink</a></li>
                                          <li><a href="#">Monochrome Blue</a></li>
                                          <li><a href="#">Monochrome Yellow</a></li>
                                          <li><a href="#">Monochrome Purple</a></li>
                                          <li><a href="#">Monochrome Green</a></li>
                                          <li><a href="#">Monochrome Orange</a></li>
                                      </ul>
                                  </li>
                                  <li><a href="BowTies.aspx">BowTies</a></li>
                                  <li><a href="Tops.aspx">Tops</a></li>
                                  <li><a href="Accessories.aspx">Accessories</a></li>
                                  <li><a href="About.aspx">About Avery Bow</a></li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </div>
          </header>

<!--Header-->  

    <!--Carousel-->
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
              <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              </ol>
  <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                  <div class="item active jumbotron">
                      <img class="displayed" src="Images/Fish Bow.png" alt="..." />
                      
                          <h3>Image 1</h3>
           
                  </div>
                  <div class="item jumbotron ">
                      <img class="displayed" src="Images/bowtiewriteup.png" alt="..."/>
                     
                          <h3>Image 2</h3>
                  </div>
                  <div class="item jumbotron ">
                      <img class="displayed" src="Images/bowtiemodel.png" alt="..."/>
                      
                          <h3>Image 3</h3>
                  </div>
              </div>
  <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span> 
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
              </a>
          </div>
  <!--Carousel-->
     <p>shopify button here</p>

  <!-- footer -->
        <footer class="site-footer  panel-footer" role="contentinfo">
            <div class="container">
                <div class="footer wow fadeInUp" data-wow-delay="750ms">
                    <div>
                    &copy; 2016 AveryBow.ca All Rights Reserved AveryBow&reg;. <a href="#" target="_blank">Privacy Policy</a> 
                    </div>
                <a href="https://www.facebook.com/AveryBowCanada/?fref=ts"/> 
                <img src="Images/SimpleFb.ico" title="Facebook" alt="Facebook" class="img-circle FacebookImg" /> 

                <a href="https://twitter.com/averybowcanada" />
                <img src="Images/TwitterIcon.png" title="Twitter" alt="Twitter" class="img-circle TwitterImg"/> 

                <a href="https://www.instagram.com/averybowcanada/"/>
                <img src="Images/InstaIcon.ico" title="Instagram"  alt="Instagram" class="img-circle InstaImg"/> 

                <a href="https://www.youtube.com/" />
                <img src="Images/YoutubeIcon.png" title="Youtube" alt="Youtube" class="img-circle YoutubeImg"/>

                <a href="https://www.weebly.com/"/> 
                <img src="Images/WeeblyIcon.png" title="Weebly" alt="Weebly" class="img-circle WeeblyImg" />

                <a href="https://www.pinterest.com/"/>
                <img src="Images/PinterestIcon.png" title="Pinterest" alt="Pinterest" class="img-circle PinImg" />

                </div>
            </div>
    </footer>
          
  <!-- footer -->

   </form>

     <form id="test-form" class="white-popup-block mfp-hide">
         <h1>Form</h1>
         <fieldset style="border:0;">
             <ol>
                 <li>
                     <label for="name">
                     Name</label>
                     <input id="name" name="name" placeholder="Name" required="" type="text"/> </li>
                 <li>
                     <label for="email">
                     Email</label>
                     <input id="email" name="email" placeholder="example@domain.com" required="" type="email"/> </li>
                 <li>
                     <label for="phone">
                     Phone</label>
                     <input id="phone" name="phone" placeholder="Eg. +447500000000" required="" type="tel"/> </li>
                 <li>
                     <label for="textarea">
                     Textarea</label>
                     <textarea id="textarea">Try to resize me to see how popup CSS-based resizing works.</textarea> </li>
                 <li>
                     <input type="submit" value="submit"/> </li>
             </ol>
         </fieldset>
     </form>
<script type="text/javascript">
    $(document).ready(function () {
        $('.popup-with-form').magnificPopup({
            type: 'inline',
            preloader: false,
            focus: '#name',

            // When elemened is focused, some mobile browsers in some cases zoom in
            // It looks not nice, so we disable it:
            callbacks: {
                beforeOpen: function () {
                    if ($(window).width() < 700) {
                        this.st.focus = false;
                    } else {
                        this.st.focus = '#name';
                    }
                }
            }
        });
    });
</script>

<script type="text/javascript">
    // create the back to top button
    $('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');

    var amountScrolled = 300;

    $(window).scroll(function () {
        if ($(window).scrollTop() > amountScrolled) {
            $('a.back-to-top').fadeIn('slow');
        } else {
            $('a.back-to-top').fadeOut('slow');
        }
    });

    $('a.back-to-top, a.simple-back-to-top').click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 700);
        return false;
    });
</script>

</body>
</html>
