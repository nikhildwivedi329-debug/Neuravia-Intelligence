<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="/NEURAVIA_INTELLIGENCE/css/style.css">
</head>
<body>

<nav class="navbar">
    <div class="logo">Neuravia.AI</div>

    <ul class="nav-links">
        <li><a href="home">Home</a></li>
        <li><a href="services.jsp">Services</a></li>
        <li><a href="contact.jsp" class="active">Contact</a></li>
        <li><a href="#about-developer">About Us</a></li>
        <li><a href="#" class="btn">Get Started</a></li>
    </ul>

    <div class="menu-toggle" onclick="toggleMenu()"></div>
</nav>

<section class="contact-hero">
    <br><br><br><br>
    <h1>Let's Build the Future Together</h1>
    <br>
    <p>
        Connect with our experts who combine domain expertise with real-world
        experience to serve as true thought partners in your LLM training
        and data curation needs.
    </p>
</section>

<section class="contact-page">

    <%
        if ("true".equals(request.getParameter("success"))) {
    %>
        <p style="color: green; font-weight: 600; text-align:center;">
            Message sent successfully! We'll contact you soon.
        </p>
    <%
        } else if ("true".equals(request.getParameter("error"))) {
    %>
        <p style="color: red; font-weight: 600; text-align:center;">
             Something went wrong. Please try again.
        </p>
    <%
        }
    %>

    <div class="contact-card">
        <h1>Get in Touch</h1>
        <p class="subtitle">
            Ready to transform your LLM with high-quality training data?
            Let's discuss your project requirements.
        </p>

        
        <form action="contact" method="post">

    <div class="row">
        <input type="text" name="firstName" placeholder="First Name *" required>
        <input type="text" name="lastName" placeholder="Last Name *" required>
    </div>

    <input type="email" name="email" placeholder="Email *" required>
    <input type="text" name="company" placeholder="Company">

    <select name="projectType" required>
        <option value="">Select project type</option>
        <option>AI Training Data</option>
        <option>Model Evaluation</option>
        <option>Enterprise AI</option>
    </select>

    <textarea name="message" placeholder="Tell us about your project requirements..." rows="5" required></textarea>

    <button type="submit">Send Message</button>
</form>


    </div>

    <div class="next-steps">
        <h2>Next Steps</h2>
        <p class="steps-subtitle">What happens after you submit the form?</p>

        <ul>
            <li><span>1</span> Initial consultation within 24 hours</li>
            <li><span>2</span> Custom proposal based on your needs</li>
            <li><span>3</span> Pilot project to demonstrate value</li>
        </ul>
    </div>
<section id="about-developer" class="about-overlay">

    <div class="about-card">
    
        <span class="close-btn" onclick="closeModal('aboutModal')">&times;</span>

        <div class="about-logo">
            <div class="logo-circle">N</div>
            <h2>About the Developer</h2>
        </div>

        <p>
            Hello! I'm <strong>Nikhil Dwivedi</strong>, a passionate Java and Web Developer.
        </p>

        <p>
            This <strong>"NEURAVIA_INTELLIGENC"</strong> was built to 
            conect all the people and  and make them aware of <strong>Artificial Intelligence</strong>.
        </p>

        <p>
            My goal is to build secure, efficient, and scalable applications that make
            technology more trustworthy and accessible.
        </p>

        <div class="social-links">
            <a href="https://www.linkedin.com/in/nikhil-dwivedi-1aa797338?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" target="_blank">
                <img src="images/linkedin.png" alt="LinkedIn">
            </a>

            <a href="https://www.instagram.com/nikhildwivedi2006?igsh=MW8xYnpjc3ptYzhnag==" target="_blank">
                <img src="images/instagram.png" alt="Instagram">
            </a>
        </div>
    </div>

</section>

    <div class="info-card">
        <h2>Contact Information</h2>
        <p class="info-subtitle">Get in touch with our team directly</p>

        <div class="info-item">
            <div>
                <strong>Address</strong>
                <p>
                    Address will be uploaded soon.........
                </p>
            </div>
        </div>

        <div class="info-item">
            <div>
                <strong>Email</strong>
                <p>info@neuravia.ai</p>
            </div>
        </div>
    </div>



</section>

<script>
function closeAbout() {
    window.location.hash = "";
}
</script>

</body>
</html>
