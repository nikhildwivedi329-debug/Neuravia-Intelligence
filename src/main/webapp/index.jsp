<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Neuravia AI</title>
    <link rel="stylesheet" href="/NEURAVIA_INTELLIGENCE/css/style.css">

</head>
<body>

<nav class="nav-wrapper">
    <div class="logo">
    <span class="logo-icon">◉</span> Neuravia.AI
</div>
    <ul class="nav-links">
        <li><a href="home" class="active">Home</a></li>
        <li><a href="services.jsp">Services</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="contact.jsp" class="btn">Get Started</a></li>
    </ul>

    <div class="menu-toggle" onclick="toggleMenu()">☰</div>
</nav>

<section class="hero">

    <div class="hero-logo">
        <img src="<%= request.getContextPath() %>/images/logo.png">
        
    </div>

    <h1>Changing the World with Artificial Intelligence</h1>

    <p>
        To be the world’s most trusted partner in specialised
        Reinforcement Learning for fine-tuning AI Models
    </p>

    <div class="hero-buttons">
        <a href="contact.jsp" class="primary-btn">Get Started →</a>
        <a href="services.jsp" class="secondary-btn">Explore Our Services</a>
    </div>

</section>

<section class="track-section">
    <div class="track-container">

        <h2 class="track-title">Proven Track Record</h2>
        <p class="track-subtitle">
            Our expertise is backed by real results and extensive experience in AI data curation.
        </p>

        <div class="track-cards">

            <div class="track-card">
                <h3 class="counter" data-target="200">0</h3>
                <span class="suffix">+</span>
                <p>Projects</p>
            </div>

            <div class="track-card highlight">
                <h3 class="counter" data-target="400">0</h3>
                <span class="suffix">K+</span>
                <p>Data Annotation Hours</p>
            </div>

            <div class="track-card">
                <h3 class="counter" data-target="5">0</h3>
                <span class="suffix">+</span>
                <p>Domain Expertise</p>
            </div>

        </div>
    </div>
</section>

<section class="features-section">

    <h2>What Sets Us Apart</h2>
    <p class="features-subtitle">
        Our unique combination of advanced technology, expert workforce,
        and integrated platform delivers unmatched quality and efficiency
        in AI data services.
    </p>

    <div class="features-container">

        <div class="feature-card">
            <div class="icon">⚙️</div>
            <h3>Human-Aligned Data Engine</h3>
            <p>
                Proprietary workflows for supervised fine-tuning, RLHF,
                and model evaluation. We combine human expertise with
                advanced AI techniques for safe and reliable models.
            </p>
        </div>

        <div class="feature-card">
            <div class="icon">👥</div>
            <h3>Vertically Integrated Workforce</h3>
            <p>
                Carefully trained and vetted experts with real-time
                quality checks ensuring consistent and high-quality
                AI training data.
            </p>
        </div>

        <div class="feature-card">
            <div class="icon">📊</div>
            <h3>Platform-Driven Operations</h3>
            <p>
                End-to-end platform managing task allocation, quality
                assurance, analytics, and reporting with full transparency.
            </p>
        </div>

    </div>
</section>

<section class="expertise-section">
    <div class="expertise-container">

        <h2 class="expertise-title">
            Our Expertise in <span>Post-Training Techniques</span>
        </h2>

        <p class="expertise-subtitle">
            Our team has deep expertise in crucial training techniques that elevate
            your LLM's performance.
        </p>

        <div class="expertise-cards">

            <!-- CARD 1 -->
            <div class="expertise-card">
                <div class="expertise-icon">🌐</div>
                <h3>Supervised Fine-Tuning (SFT)</h3>
                <p>
                    We craft domain-specific, high-quality instruction-response datasets
                    to precisely steer your model’s behavior, improving alignment,
                    accuracy, and reliability.
                </p>
            </div>

            <!-- CARD 2 -->
            <div class="expertise-card active">
                <div class="expertise-icon">👥</div>
                <h3>Reinforcement Learning from Human Feedback (RLHF)</h3>
                <p>
                    We design powerful human-feedback loops that align your LLM
                    with real human preferences to generate safe, helpful, and
                    accurate outputs.
                </p>
            </div>

            <!-- CARD 3 -->
            <div class="expertise-card">
                <div class="expertise-icon">✔️</div>
                <h3>Evaluations</h3>
                <p>
                    Our robust evaluation frameworks ensure performance, fairness,
                    and safety — validating real-world readiness, not just training success.
                </p>
            </div>

        </div>
    </div>
</section>

<script>
    // Scroll navbar effect
    
    window.addEventListener("scroll", function () {
        const navbar = document.querySelector(".navbar");
        navbar.classList.toggle("scrolled", window.scrollY > 50);
    });

    // Mobile menu toggle
    function toggleMenu() {
        document.querySelector(".nav-links").classList.toggle("show");
    }
</script>

<script>
    const counters = document.querySelectorAll('.counter');

    const speed = 80;

    const animateCounters = () => {
        counters.forEach(counter => {
            const updateCount = () => {
                const target = +counter.getAttribute('data-target');
                const count = +counter.innerText;

                const increment = target / speed;

                if (count < target) {
                    counter.innerText = Math.ceil(count + increment);
                    setTimeout(updateCount, 20);
                } else {
                    counter.innerText = target;
                }
            };
            updateCount();
        });
    };

    let started = false;
    window.addEventListener('scroll', () => {
        const section = document.querySelector('.track-section');
        const sectionTop = section.getBoundingClientRect().top;
        if (sectionTop < window.innerHeight && !started) {
            animateCounters();
            started = true;
        }
    });
</script>


</body>
</html>
