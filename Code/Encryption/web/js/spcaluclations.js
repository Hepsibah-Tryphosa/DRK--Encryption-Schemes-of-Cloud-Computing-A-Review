
function myFunction(){
   var x=document.getElementById("iii").value;
   var y=30;
   var z=x*y;
   
  var input = document.getElementById("myInput");
input.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   document.getElementById("myBtn").click();
  }
}
}
