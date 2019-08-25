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
