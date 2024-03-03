<%@ Page AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Exp2.Home" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>My Portfolio</title>
        <link rel="stylesheet" href="style.css">
      <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'> 

        <style type="text/css">
            .auto-style1 {
                margin-left: 0;
            }
        </style>

    </head>

    <body>
       
        
    <header class="header">
        <a href="#home" class="logo"><span>Aritra </span><span>Naha </span> <span>Likhan</span></a>

        <i class='bx bx-menu' id="menu-icon"></i>
        <nav class="navbar">
            <a href="#home" class="active">Home</a>
         <!--   <a href="#services">Services</a>  -->
            <a href="#projects">Projects</a>
            <a href="#skills">Expertise</a>
            <a href="#education">Education</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <section class="home" id="home">
        <div class="home-img">
            <img src="assets/image.jpg"height="auto" alt="">
        </div>

        <div class="home-content">
            <h3>Hi</h3>
            <h1>It's <span>Likhan</span></h1>
            <h3 class="text-animation">I'm a <span></span></h3>
            <p>Technology and research enthusiast, passionate developer, skilled in multiple programming languages </p>

            <div class="social-icons">
                <a href="https://www.linkedin.com/in/aritra-naha-likhan-9494362b5"><i class='bx bxl-linkedin-square' ></i></a>
                <a href="https://www.facebook.com/profile.php?id=100077961168011&mibextid=rS40aB7S9Ucbxw6v"><i class='bx bxl-facebook-circle' ></i></a>
                <a href="https://github.com/AritraLikhan"> <i class='bx bxl-github'></i></a>
                
                   
            </div>

            <!-- <a href="#" class="btn">HIRE</a> -->

            <button class="btn"
            onclick="window.open('./assets/My_Resume.pdf')"
          >
            Download CV
          </button>

        </div>

    </section>

    <!-- <section class="services" id="services">
        <h2 class="heading">Services</h2>
        <div class="service-container">
            <div class="services-box">
                <i class='bx bxs-palette'></i>
                <h3>Graphic Design</h3>
                <p>
                    I am a graphic  designer,I dunno how to do it
                </p>
                <a href="#" class="btn">Learn More</a>
            </div>
            <div class="services-box">
                <i class='bx bx-code-alt'></i>
                <h3>Web Design</h3>
                <p>
                    I am a web designer,I dunno how to do it
                </p>
                <a href="#" class="btn">Learn More</a>
            </div>
            <div class="services-box">
                <i class='bx bx-code'></i>
                <h3>Web Development</h3>
                <p>
                    I am a web developer,I dunno how to do it
                </p>
                <a href="#" class="btn">Learn More</a>
            </div>
        </div>

    </section> -->



    <!-- <section class="projects" id="projects">
        <h2 class="heading">Projects</h2>
        <div class="projects-container">

        <div class="projects-box">
         <!--    <img src="assets/1.jpg" alt="">  
            <div class="projects-info">
                <h4>Graphic Design</h4>
                <p>Habi jabi kore jibon katai keno?</p>
                <a href="#"><i class="bx bx-link"></i></a>
            </div>
        </div>

        <div class="projects-box">
         <!--    <img src="assets/2.jpg" alt=""> 
            <div class="projects-info">
                <h4>Web Development</h4>
                <p>Habi jabi kore jibon katai keno?</p>
                <a href="#"><i class="bx bx-link"></i></a>
            </div>
        </div>

        <div class="projects-box">
       <!--      <img src="assets/3.jpg" alt="">   
            <div class="projects-info">
                <h4>FrontEnd development</h4>
                <p>Habi jabi kore jibon katai keno?</p>
                <a href="#"><i class="bx bx-link"></i></a>
            </div>
        </div>
        
      </section>  -->

        
        <section class="projects" id="projects">
            <h2 class="heading">Projects</h2>
            <div class="projects-container">
                <asp:Repeater ID="rptProjects" runat="server">
                    <ItemTemplate>
                        <div class="projects-box">
                            <div class="projects-info">
                                <h4><%# Eval("Title") %></h4>
                                <br />
                                <p><%# Eval("Description") %></p>
                                <br />
                                <a href='<%# Eval("Link") %>'><i class="bx bx-link"></i></a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
            
    


<section class="skills" id="skills">
    <h2 class="heading">Expertise</h2>

    <div class="skill-bars">
       <div class="bar">
            <div class="info">
                <span>Javascript using Mern Stack(frontend,backend,version-control)</span>
            </div>
            <div class="progress-line javascript">
                <span></span>
            </div>
        </div>  

        <div class="bar">
            <div class="info">
                <span>Java using Android Studio(UI designing,backend integration,debugging and testing)</span>
            </div>
            <div class="progress-line java">
                <span></span>
            </div>
        </div>


        <div class="bar">
            <div class="info">
                <span>Python(Basic operations to ML dealing libraries,model build,testing,training)</span>
            </div>
            <div class="progress-line python">
                <span></span>
            </div>
        </div>


        <div class="bar">
            <div class="info">
                <span>PHP using Laravel(routing,controller,database interaction)</span>
            </div>
            <div class="progress-line cpp">
                <span></span>
            </div>
        </div>

        <div class="bar">
            <div class="info">
                <span>Cryptography(algorithms and implementations)</span>
            </div>
            <div class="progress-line csharp">
                <span></span>
            </div>
        </div> 

    </div>
</section>


<section class="timeline-section" id="education">
    <h2 class="heading">Education</h2>
    <div class="timeline-items">

     <!--   <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-date">2018-2020</div>
             <div class="timeline-content">
                <h3>High School</h3>
                <p>Lorm ncjndj ajansj ajndjncja ansdjnjdn</p>

            </div>
        </div>  -->


        <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-date">2013-2018</div>
            <div class="timeline-content">
                <h3>High School</h3>
                <p>Hasan Ali Govt. High School,<br />
                   Chandpur</p>

            </div>
        </div>


        <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-date">2018-2020</div>
            <div class="timeline-content">
                <h3>
                    College
                </h3>
                <p>Notre Dame College,<br />Dhaka</p>

            </div>
        </div>

        <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-date">2020-present</div>
            <div class="timeline-content">
                <h3>University</h3>
                <p>Khulna University of Engineerinng and Technology</p>

            </div>
        </div>


        <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-date">2024</div>
            <div class="timeline-content">
                <h3>Courses</h3>
                <p>Machine Learning: Natural Language Processing in Python, offered by Udemy.</p>

            </div>
        </div>

    </div>

</section>



       <section class="contact" id="contact">
    <form id="formpro" runat="server" class="contact-form">
        <h2 class="heading">Contact <span>Me</span></h2>

        <div class="input-box">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field" placeholder="Full Name"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field" placeholder="Email"></asp:TextBox>
        </div>

        <div class="input-box">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field" placeholder="Phone Number"></asp:TextBox>
        <!--    <asp:TextBox ID="TextBox4" runat="server" CssClass="input-field" placeholder="Subject"></asp:TextBox>  -->
        </div>

        <textarea id="textArea1" cols="30" rows="4" name="ss" runat="server" class="input-field" placeholder="Your Message"></textarea>
        <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btn" OnClick="AddContact" />

        <br />
        <br />
        <asp:Button ID="AdminLogin" runat="server" Text="Admin Login" CssClass="btn" Width="290px" OnClick="Admin_Click" />
    </form>
</section>


<footer class="footer">
    <div class="social">
       <a href="https://www.linkedin.com/in/aritra-naha-likhan-9494362b5"><i class='bx bxl-linkedin-square' ></i></a>
<a href="https://www.facebook.com/profile.php?id=100077961168011&mibextid=rS40aB7S9Ucbxw6v"><i class='bx bxl-facebook-circle' ></i></a>
<a href="https://github.com/AritraLikhan"> <i class='bx bxl-github'></i></a>
                
    </div>

    <ul class="list">
      <!--  <li>
            <a href="#">FAQ</a>
        </li>
       <!-- <li>
            <a href="#">Services</a>
        </li> -->
        <li>
            <a href="#">About Me</a>
        </li>
        <li>
            <a href="mailto:aritralikhan2001@gmail.com">Contact</a>
        </li>
       <!-- <li>
            <a href="#">Privacy Policy</a> 
        </li> -->
    </ul>


</footer>

        <script src="script.js"></script>
             
    </body>

</html>
