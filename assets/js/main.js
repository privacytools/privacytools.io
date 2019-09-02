$(function() {
  $("[data-toggle='tooltip']").tooltip();
});

// Navbar dropdowns
const navSections = document.querySelectorAll(".nav-details");

navSections.forEach(navSection => {
  navSection.addEventListener("toggle", navSectionsToggle);
});
document.addEventListener("click", navSectionsClose);

function navSectionsToggle() {
  // When opening next dropdown, hide previous
  if (this.open) {
    navSections.forEach(navSection => {
      if (navSection != this && navSection.open) navSection.open = !open;
    });
  }
}

function navSectionsClose(event) {
  // Hide all dropdowns when clicking in different place
  if (event.target.matches(".nav-summary")) return;
  navSections.forEach(navSection => {
    navSection.open = !open;
  });
}


// Dark/Light color scheme switch button
document.querySelector("#nav-switch-theme").style.display = "inline";

function changeColorScheme() {
  // Use whatever users want
  if (localStorage.getItem("colorScheme") === "dark") {
    // Change to light theme
    if (window.matchMedia("(prefers-color-scheme: dark)").matches === false) {
      document.querySelector("#dark-css").setAttribute("media", "(prefers-color-scheme: dark)");
      localStorage.removeItem("colorScheme");
    } else {
      // by setting invalid media it will just not apply CSS for anyone
      document.querySelector("#dark-css").setAttribute("media", "invalid");
      localStorage.setItem("colorScheme", "light");
    }
  }
  // Change to dark theme
  else if (localStorage.getItem("colorScheme") === "light") {
    if (window.matchMedia("(prefers-color-scheme: dark)").matches === true) {
      document.querySelector("#dark-css").setAttribute("media", "(prefers-color-scheme: dark)");
      localStorage.removeItem("colorScheme");
    } else {
      // media was set to prefers-color-scheme: dark
      document.querySelector("#dark-css").removeAttribute("media");
      localStorage.setItem("colorScheme", "dark");
    }
  }

  // Just use whatever browsers want
  else if (window.matchMedia("(prefers-color-scheme: dark)").matches === true) {
    // Change to light Theme
    document.querySelector("#dark-css").setAttribute("media", "invalid");
    localStorage.setItem("colorScheme", "light");
  } else {
    // Change to dark theme
    document.querySelector("#dark-css").removeAttribute("media");
    localStorage.setItem("colorScheme", "dark");
  }
}


// Matomo
var _paq = window._paq || [];
/* tracker methods like "setCustomDimension" should be called before "trackPageView" */
_paq.push(["trackPageView"]);
_paq.push(["enableLinkTracking"]);
(function() {
  var u = "https://stats.privacytools.io/";
  _paq.push(["setTrackerUrl", u + "matomo.php"]);
  _paq.push(["setSiteId", "1"]);
  var d = document,
    g = d.createElement("script"),
    s = d.getElementsByTagName("script")[0];
  g.type = "text/javascript";
  g.async = true;
  g.defer = true;
  g.src = u + "matomo.js";
  s.parentNode.insertBefore(g, s);
})();
