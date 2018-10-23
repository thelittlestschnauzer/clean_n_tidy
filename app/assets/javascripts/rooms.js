function addChoreField() {
  //create Date object
  var date = new Date();

  var mSec = date.getTime();

  idAttributName = "room_chores_attributes_0_chore".replace("0", mSec);
  nameAttributName = "room[chores_attributes][0][name]".replace("0", mSec);

  var li = document.createElement("li");

  var inputName = document.createElement("INPUT");
  inputName.setAttribute("type", "text");
  inputName.setAttribute("id", idAttributName);
  inputName.setAttribute("name", nameAttributName);
  li.appendChild(inputName);

  document.getElementById("myList").appendChild(li);

  $("#choreHeader").show();
}
