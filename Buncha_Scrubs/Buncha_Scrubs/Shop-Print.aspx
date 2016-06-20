<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Shop-Print.aspx.cs" Inherits="Buncha_Scrubs.WebForm5" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
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
                      <img class="displayed" src="Images/9.png" alt="..." />      
                  </div>
                  <div class="item jumbotron ">
                      <img class="displayed" src="Images/avrey.jpg" alt="..."/>
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

   <div data-embed_type="product" data-shop="averybow.myshopify.com" data-product_name="print" data-product_handle="print" data-has_image="true" data-display_size="compact" data-redirect_to="checkout" data-buy_button_text="Buy now" data-buy_button_out_of_stock_text="Out of Stock" data-buy_button_product_unavailable_text="Unavailable" data-button_background_color="7db461" data-button_text_color="ffffff" data-product_modal="false" data-product_title_color="000000" data-next_page_button_text="Next page"></div>
<script type="text/javascript">
    document.getElementById('ShopifyEmbedScript') || document.write('<script type="text/javascript" src="https://widgets.shopifyapps.com/assets/widgets/embed/client.js" id="ShopifyEmbedScript"><\/script>');
</script>
<noscript><a href="https://averybow.myshopify.com/cart/23194652103:1" target="_blank">Buy print</a></noscript>
 </asp:Content>
