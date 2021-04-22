function menuOpen() {
  document.getElementById("nav").style.cssText = "display: block;";
  document.getElementById("menuButton").onclick = menuClose;
  document.getElementById("menuButton").src = "x-circle.svg";
}

function menuClose() {
  document.getElementById("nav").style.cssText = "display: none;";
  document.getElementById("menuButton").onclick = menuOpen;
  document.getElementById("menuButton").src = "list.svg";
}
