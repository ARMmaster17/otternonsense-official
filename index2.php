<html>
  <head>
    <title>Otter Nonsense Interactive - Official Website</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="stylesheet" href="https://enigmatic-thicket-1799.herokuapp.com/src/style/default.css">-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://enigmatic-thicket-1799.herokuapp.com/src/js/xml.js"></script>
  </head>
  <body>
    <header>

    </header>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
         </button>
         <a class="navbar-brand" href="/index.html">Otter Nonsense Interactive</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
         <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="jumbotron">
        <h1>Otter Nonsense Interactive</h1>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <h3>Column 1</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
      </div>
      <div class="col-sm-4">
        <h3>Column 2</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
      </div>
      <div class="col-sm-4">
        <h3>Live feed</h3>
        <h5><a href="/feed.xml" class="feed">subscribe to our feed</a></h5>
        <div class="rss" id="chan">
          <h4><div class="rss" id="chan_title"></div></h4>
          <div class="rss" id="chan_link"></div>
          <h6><div class="rss" id="chan_description"></div></h6>
          <a class="rss" id="chan_image_link" href=""></a>
          <div class="rss" id="chan_items"></div>
          <div class="rss" id="chan_pubDate"></div>
          <div class="rss" id="chan_copyright"></div>
        </div>
        <script type="text/javascript">
          getRSS();
        </script>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <hr />
        <?php include 'lib-version.php'; ?>
        <p>Copyright 2015 Otter Nonsense Interactive - CI build: <?php echo getVersion(); ?></p>
      </div>
    </div>
  </body>
</html>
