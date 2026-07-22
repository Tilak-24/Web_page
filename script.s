// Highlight active navigation link when scrolling

const sections = document.querySelectorAll('section[id]');
const navLinks = document.querySelectorAll('.nav-links a');

window.addEventListener('scroll', () => {

    let current = '';

    sections.forEach(section => {

        const sectionTop = section.offsetTop - 80;

        if (window.scrollY >= sectionTop) {
            current = section.getAttribute('id');
        }

    });


    navLinks.forEach(link => {

        if (link.getAttribute('href') === '#' + current) {
            link.style.color = '#3b82f6';
        } else {
            link.style.color = '';
        }

    });

});


// Smooth scrolling for navigation links

document.querySelectorAll('a[href^="#"]').forEach(link => {

    link.addEventListener('click', function(e){

        const target = document.querySelector(this.getAttribute('href'));

        if(target){

            e.preventDefault();

            target.scrollIntoView({
                behavior: "smooth"
            });

        }

    });

});


// Current year automatically updates footer

const footer = document.querySelector("footer");

if(footer){

    const year = new Date().getFullYear();

    footer.innerHTML = 
    `Built by Tilak BK · Sydney, NSW · ${year}`;

}