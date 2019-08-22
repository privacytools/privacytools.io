//
// Navbar dropdowns
//

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
