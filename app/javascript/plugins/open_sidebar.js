const openSidebar = () => {
  const btn = document.querySelector(".openbtn");
  btn.onclick = function () {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
  };
};

export { openSidebar };
