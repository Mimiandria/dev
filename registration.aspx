<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="miniproject.registration1" %>

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
        <div class="ads1">
            <div id="one" ></div>
            <div id="two" ></div>
            <div id="three" ></div>
            <div id="four" ></div>
            <div id="five" ></div>
        </div>
    <form id="form1" runat="server" class="container1">
            <img src="Scripts/reg/image/logo.jpg" style="height: 83px; width: 100px; margin-left: 22px; margin-top: 19px;" /><br />
            <div class="welcome"><asp:Label ID="Label4" runat="server"  Text="Register to get more details!"></asp:Label></div><br />
            <asp:Label ID="Label1" runat="server" cssClass="lbl" Text="e-mail"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="emsg" runat="server" ControlToValidate="uname" ErrorMessage="Enter a mail format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg"></asp:RegularExpressionValidator>
            <br /><asp:TextBox ID="uname" runat="server" CssClass="mail"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" cssClass="lbl" Text="Full Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="emsg" runat="server" ControlToValidate="fname" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><asp:TextBox ID="fname" runat="server" CssClass="mail"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" cssClass="lbl" Text="Date of birth"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="emsg" ControlToValidate="dob" ErrorMessage="date of birth dd/mm/yyyy"  ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><asp:TextBox ID="dob" runat="server" CssClass="mail"></asp:TextBox><br />
           <asp:Label ID="Label8" runat="server" cssClass="lbl" Text="Phone number"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="emsg" ControlToValidate="phone" ErrorMessage="Enter your number" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><asp:TextBox ID="phone" runat="server" CssClass="mail"></asp:TextBox><br />
            <asp:Label ID="Label7" runat="server" cssClass="lbl" Text="Address"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="addr" CssClass="emsg" ErrorMessage="Enter your address"  ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><asp:TextBox ID="addr" runat="server" CssClass="mail"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" cssClass="lbl" Text="password"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="psw" ErrorMessage="Enter password"  CssClass="emsg" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><asp:TextBox ID="psw" runat="server" CssClass="mail" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" CssClass="signin" Text=" SIGN UP" OnClick="Button1_Click" /><br /> 
            <asp:Label ID="msg" runat="server" cssClass="msg" Text=""></asp:Label>
            <div class="reg"><asp:Label ID="Label3" runat="server"  Text="Start to"></asp:Label>
            <asp:HyperLink ID="HyperLink1" href="login.aspx" cssClass="lk" runat="server">LOG IN</asp:HyperLink></div>
    </form>
         </div>
    <footer class="foot">
        <h6>All Rights Reserved.</h6>
    </footer>
</body>
</html>
