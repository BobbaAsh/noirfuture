const closeSidebar = () => {
  const btn = document.querySelector(".closebtn");
  btn.onclick = function () {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
  };
};

export { closeSidebar };
