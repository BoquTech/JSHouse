

function translate1(){
      document.getElementById("buliding_name").innerHTML="<%=@property.building_name.html_safe%>";
      document.getElementById("position").innerHTML="<%= @property.address.html_safe%>";
      document.getElementById("description").innerHTML="<%=@property.description.html_safe%>";
      document.getElementById("feature").innerHTML="<%= @property.features.html_safe%>";
      document.getElementById("translate1").style.display="none";
      document.getElementById("translate2").style.display="block";
}
function translate2(){
      document.getElementById("buliding_name").innerHTML="<%=@building_name1%>";
      document.getElementById("position").innerHTML="<%= @address1%>";
      document.getElementById("description").innerHTML="<%=@description1%>";
      document.getElementById("feature").innerHTML="<%= @features1%>";
      document.getElementById("translate1").style.display="block";
      document.getElementById("translate2").style.display="none";
}