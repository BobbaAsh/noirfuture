const LogoSwitcher = () => {
  var x = 0;

  window.setInterval(function () {
    if (x == 4) {
      x = 1;
    } else {
      x = x + 1;
    }

    document.getElementById("noirfuture").src = "/assets/logo" + x + ".png";
  }, 3000);
};

export { LogoSwitcher };
