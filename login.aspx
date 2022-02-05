<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="miniproject.registration" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    <title>DR D Y PATIL</title>
    <link type="text/css" href="../Scripts/reg/reglog.css" rel="stylesheet" />
     <link type="image/x-icon" href="../Scripts/reg/image/dy.JPG" rel="icon" />
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body class="cont">
     <header>
    <!--Default Navbar Start Here-->  
    <!--<nav> tag  start with classes .navbar and .navbar-default-->  
    <nav class="navbar navbar-inverse">  
        <div class="container-fluid">  
            <!--Navbar Header Start Here-->  
            <div class="navbar-header">  
                <a class="navbar-brand" href="#">DR D Y PATIL ACS</a>  
            </div>  
            <!--Navbar Header End Here-->  
            <!--Menu Start Here-->  
            <ul class="nav navbar-nav">  
                <li class="active"><a href="#">Home</a></li>  
                <li><a href="#">About Us</a></li>  
                <li><a href="#">Course</a></li>  
                <li><a href="#">Contact Us</a></li>  
            </ul>  
            <!--Menu End Here-->  
        </div>  
    </nav>  
    <!--<nav> tag end-->  
    <!--Default Navbar End Here-->  
         <marquee class="mar" direction="left" height="100px" >
               DR. D.Y. PATIL ARTS, COMMERCE & SCIENCE COLLEGE
SANT TUKARAM NAGAR, PIMPRI, PUNE-411018, (MAHARASHTRA) INDIA
RE-ACCREDITED BY NAAC WITH CGPA OF 3.28 ON A FOUR POINT SCALE AT 'A' GRADE
(AFFILIATED TO SAVITRIBAI PHULE PUNE UNIVERSITY AND RECOGNIZED BY GOVT. OF MAHARASHTRA ID NO. PU/PN/ACS/111/1995
ISO 9001: 2008 AND 14001: 2004 CERTIFIED
RECIPIENT OF BEST COLLEGE AWARD OF SPPU FOR ACADEMIC YEAR 2016-17 )
            </marquee>
    </header>
    <div class="main-container1">
        <div class="ads">
            
        </div>
    <form id="form1" runat="server" class="container2">
            <img src="Scripts/reg/image/logo.jpg" style="height: 83px; width: 100px" /><br />
            <div class="welcome"><asp:Label ID="Label4" runat="server"  Text="Welcome! please sign in to get more information"></asp:Label></div><br />
            <asp:Label ID="Label1" runat="server" cssClass="lbl" Text="e-mail"></asp:Label><br /><asp:TextBox ID="uname" runat="server" CssClass="mail"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" cssClass="lbl" Text="password"></asp:Label><br /><asp:TextBox ID="psw" runat="server" CssClass="psw" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" CssClass="signin" Text="SIGN IN" OnClick="Button1_Click" /><br />
             <asp:HyperLink ID="HyperLink2" href="#" cssClass="forget" runat="server">Forget password</asp:HyperLink>
            <div class="reg"><asp:Label ID="Label3" runat="server"  Text="Don't have an account?"></asp:Label>
            <asp:HyperLink ID="HyperLink1" href="registration.aspx" cssClass="lk" runat="server">REGISTER NOW</asp:HyperLink></div>
           
        <asp:Label ID="msg" runat="server" cssClass="msg" Text=""></asp:Label>
    </form>
     </div>
    <footer class="foot">
        <h6>All Rights Reserved.</h6>
    </footer>
</body>
</html>
