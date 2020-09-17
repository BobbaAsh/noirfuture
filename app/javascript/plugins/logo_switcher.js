const LogoSwitcher = () => {
    var x = 0;
window.setInterval(function () {
  x = x + 1;
  document.getElementById("noirfuture").src = "/assets/logo" + x + ".png";
  document.getElementById("doughnuts").innerHTML = "logo" + x + ".png";
}, 1000);
}

export { LogoSwitcher }