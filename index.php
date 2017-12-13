<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>Film App by Paüsiber</title>

    <link rel="stylesheet" href="app/assets/css/framework7.ios.min.css">
    <link rel="stylesheet" href="app/assets/css/framework7.ios.colors.min.css">
    <link rel="stylesheet" href="app/assets/css/framework7-icons.css">
    <link rel="stylesheet" href="app/assets/css/kitchen-sink.css">
    <link rel="stylesheet" href="app/assets/css/font-awesome.css">
    <link rel="stylesheet" href="app/assets/css/main.css">
  </head>
  <body>

    <div class="statusbar-overlay" style="background-color: #ff9300;"></div>
    <div class="panel-overlay"></div>

    <div class="views tabs toolbar-through" id="app">

      <div id="anasayfa" class="view main-view active tab">

        <div class="navbar">
          <div class="navbar-inner">
            <div class="left sliding">
              <a href="#" data-ignore-cache="true" class="link icon-only">
                <i class="f7-icons">persons</i>
              </a>
            </div>
            <div class="center sliding">Ana Sayfa</div>
            <div class="right"></div>
          </div>
        </div>

        <div class="pages navbar-through">
          <div data-page="media-lists" class="page">
            <div class="page-content">

              <div class="content-block-title">
                Film App by Paüsiber
              </div>


            </div>
          </div>
        </div>

      </div>


      <div class="toolbar tabbar toolbar-bottom tabbar-labels theme-blue" id="main-toolbar">
        <div class="toolbar-inner bottom-menu">

          <a href="#anasayfa" class="tab-link active">
            <i class="f7-icons">home</i><span class="tabbar-label">Ana Sayfa</span>
          </a>

        </div>
      </div>

    </div>

    <script type="text/javascript" src="app/assets/js/framework7.min.js"></script>
    <script type="text/javascript" src="app/assets/js/jquery.js"></script>
    <script type="text/javascript" src="app/assets/js/main.js"></script>
  </body>
</html>
