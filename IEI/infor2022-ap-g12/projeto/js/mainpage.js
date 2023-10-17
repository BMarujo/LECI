function hideNavbar() {
    var navbar = document.getElementById("hide");
    var toggleBtn = document.getElementById("line");
    var toggleBtn2 = document.getElementById("line2");
    var toggleBtn3 = document.getElementById("line3");
    if (navbar.style.visibility === "visible") {
        navbar.style.visibility = "hidden";
        toggleBtn.style.backgroundColor = "rgb(158, 67, 67)";
        toggleBtn2.style.backgroundColor = "rgb(158, 67, 67)";
        toggleBtn3.style.backgroundColor = "rgb(158, 67, 67)";
    } 
    else {
        navbar.style.visibility = "visible";
        toggleBtn.style.backgroundColor = "#0087ca";
        toggleBtn2.style.backgroundColor = "#0087ca";
        toggleBtn3.style.backgroundColor = "#0087ca";
    }
}


function currentpage(){
  alert("Já se encontra nessa página");
}

var navbar = document.querySelector(".navbar22");
var timerId;
navbar.style.opacity = "1";
if(navbar.style.opacity=="1"){
window.addEventListener("scroll", function(){
  clearTimeout(timerId);
  timerId = setTimeout(function(){
    navbar.style.opacity = "0";
  }, 500);
});
};

navbar.addEventListener("mouseenter", function(){
  clearTimeout(timerId);
  navbar.style.opacity = "1";
});



function robothand(){
  var x = document.getElementById("light");
  var y = document.getElementById("hand");
  if(x.style.opacity=="1"){
    x.style.opacity="0"; 
    y.style.opacity="0";
  }
  else{
    x.style.opacity="1"; 
    y.style.opacity="1";
  }
}

