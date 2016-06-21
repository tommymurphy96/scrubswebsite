<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Buncha_Scrubs.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <div class="container banner1">
        <div class="banner-data">
        </div>
    </div>
    <div class="container banner2">
        <div class="banner-data">
            <p class="right">
                      <a class="btn btn-default" href="Fish Dentures.aspx" role="button">Shop This Print &raquo;</a>
            </p>        
        </div>
    </div>
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
                      <img class="displayed" src="Images/1.jpeg" alt="..." />      
                  </div>
                  <div class="item jumbotron ">
                      <img class="displayed" src="Images/2.jpeg" alt="..."/>
                  </div>
                  <div class="item jumbotron ">
                      <img class="displayed" src="Images/3.jpeg" alt="..." />
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
    <div class="container banner3">
        <div id="mc_embed_signup">       
            <form action="//facebook.us13.list-manage.com/subscribe/post?u=faf3ddf2a30a218ed66990f9c&amp;id=c39e85f6c3" method="post" id="Form2" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
            <div id="Div1">
	            <label for="mce-EMAIL">Stay in the know with all things Beau!</label>
	            <input type="email" value="" name="EMAIL" class="email" id="Email1" placeholder="email address" required/>
                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_faf3ddf2a30a218ed66990f9c_c39e85f6c3" tabindex="-1" value=""/></div>
                <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="Submit1" class="button"/></div>
            </div>
            </form>
        </div>
   </div>
<div class="container banner4">
    <div class="banner-data">
        <p class="left">
            <a class="btn btn-default" href="#" role="button">Shop Scrub Collection&raquo;</a>
        </p>        
    </div>
</div>

</asp:Content>