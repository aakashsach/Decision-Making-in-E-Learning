<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Elearning.WebForm1" %>

<!DOCTYPE html>






<html lang="en">
<head>
<title>Learn Center</title>
<meta charset="utf-8">
<link rel="stylesheet" href="reset.css" type="text/css" media="all">
<link rel="stylesheet" href="layout.css" type="text/css" media="all">
<link rel="stylesheet" href="style.css" type="text/css" media="all">
<script type="text/javascript" src="jquery-1.5.2.js" ></script>
<script type="text/javascript" src="cufon-yui.js"></script>
<script type="text/javascript" src="cufon-replace.js"></script>
<script type="text/javascript" src="Molengo_400.font.js"></script>
<script type="text/javascript" src="Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page1">
    <form id="form1" runat="server">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
            <li><a href="index.html">About</a></li>
           <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Courses</asp:LinkButton> </li>
            <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Programs</asp:LinkButton></li>
            <li><a href="contacts.aspx">Contacts</a></li>
            <li><a href="login.aspx">Login</a></li>
            <li class="end"><a href="register.aspx">Register</a></li>
          </ul>
        </nav>
        
      </div>
      <div class="wrapper">
        <h1><a href="learningstyle.html" id="logo">Learn Center<asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="Button2" runat="server" Text="Button" />
            </a></h1>
      </div>
      <div id="slogan" style="color: #000000"> We Will Open The World<span>of knowledge for you!</span> </div>
      <ul class="banners">
        <li><a href="#"><img src="images/banner1.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/banner2.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/banner3.jpg" alt=""></a></li>
      </ul>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- content -->
    <section id="content">
      <div class="wrapper">
        <div class="pad1 pad_top1">
          <article class="cols marg_right1">
            <figure><img src="images/page1_img1.jpg" alt=""></figure>
            <span class="font1">Learning Style</span> </article>
          <article class="cols marg_right1">
            <figure><img src="images/page1_img2.jpg" alt=""></figure>
            <span class="font1">Personality Factor</span> </article>
          <article class="cols">
            <figure><img src="images/page1_img3.jpg" alt=""></figure>
            <span class="font1">Knowledge Level</span> </article>
        </div>
      </div>
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2>Welcome to Our Center</h2>
              <p class="font2">Learn Center is the learning site that assesses you based on your learning style and personality to provide you with the best and the right study material. </p>
              <p>We will recommend the next topics you should study, based on your interest, learning style, personality and knowledge level. The prerequisites will also be mentioned in order to help you understand better.</p>
            </div>
            <a href="#" class="button"><span><span>Read More</span></span></a>
            <div class="pad_left1">
              <h2>Individual Approach to Education!</h2>
            </div>
            <div class="wrapper">
              <figure class="left marg_right1"><img src="images/page1_img4.jpg" alt=""></figure>
              <p class="pad_bot1 pad_top2">Each person has a different style and different pace with which they learn. Learning something new also depends on the knowledge level of the prerequisites.</p>
              <p> Learn Center provides you with the learning materials that is right for you, and in the field of topics that you want to learn. It is always better to get the right things laid out rather than going through the cumbersome task of searching and predicting the right type of materials.</p>
            </div>
            <div class="pad_top2"> <span><span> <a href="#" class="button">Read More</a><br />
                <br />
                </span></span>&nbsp;</div>
          </article>
          <article class="col2 pad_left2">
            <div class="pad_left1">
              <h2>New coursess</h2>
            </div>
            <ul class="list1">
              <li><a href="#">Theory of Computation</a></li>
              <li><a href="#">Compiler Design</a></li>
              <li><a href="#">Facts</a></li>
              <li></li>
              <li></li>
            </ul>
          </article>
        </div>
      </div>
    </section>
    <!-- content -->
    <!-- footer -->
    <!-- / footer -->
  </div>
</div>
<!--<script type="text/javascript">Cufon.now();</script>-->
    </form>
</body>
</html>