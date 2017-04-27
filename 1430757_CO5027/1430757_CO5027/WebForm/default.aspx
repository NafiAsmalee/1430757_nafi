<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1430757_CO5027.WebForm._default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Retrieve slideshow from http://www.jssor.com/demos/simple-fade-slideshow.slider -->
     <!-- #region Jssor Slider Begin -->
    <script src="../js/intro.js"></script>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/jssor.slider-23.0.0.mini.js"></script>
    <link href="../CSS/intro.css" rel="stylesheet" />

    <script type="text/javascript">

    
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Opacity:2}
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: $JssorSlideshowRunner$,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1100);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>

    <div id="jssor_1">
        <!-- Loading Screen -->
        <div id="lpload" data-u="loading">
            <div id="lpslide"></div>
            <div id="lpbackground"></div>
        </div>
        <div id = "lppicture" data-u="slides">
            <div>
                <img data-u="image" src="../img/1.jpg" alt="first" />
                <!--Retrieve image from https://i2.wp.com/pureinfotech.com/wp-content/uploads/2017/01/asus-zenbook-3-deluxe-UX490UA_.jpg?fit=1750%2C106-->
            </div>
            <div>
                <img data-u="image" src="../img/2.jpg" alt="second" />
                <!--Retrieve image from http://itplaza.vn/userfiles/images/ASUS/GL552JX-DM144D.jpg-->
            </div>
            <div>
                <img data-u="image" src="../img/3.jpg" alt="third" />
                <!--Retrieve image from https://i.ytimg.com/vi/XFmWHte-fqA/maxresdefault.jpg-->
            </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05"  data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div id ="lpbullet" data-u="prototype"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora12l"  data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora12r"  data-autocenter="2"></span>
    </div>
    <!-- #endregion Jssor Slider End -->

</asp:Content>
