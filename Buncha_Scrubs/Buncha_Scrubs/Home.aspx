﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Buncha_Scrubs.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="Content/custom.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav id="myNavBar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
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
                    <ul id="Nav">
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="Collection.aspx">Collection</a></li>
                        <li><a href="Catalog.aspx">Catalog</a></li>
                        <li><a href="Video.aspx">Video</a></li>
                        <li><a href="Connect.aspx">Connect</a></li>
                        <li><a href="About.aspx">About</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="Content_Area"></div>

        <div class="row">
            <div id="Footer" class="col-xs-12 col-xm-12 col-lg-12">
                <footer>
                    <p>Copyright 2016 Avery Bow Canada</p>
                </footer>
            </div>
        </div>
    </form>
</body>
</html>
