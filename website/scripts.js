let itemCounter = localStorage.length


const addToCart = (item) => {
  localStorage.setItem(itemCounter,JSON.stringify(item));
  itemCounter++;
  alert(`${item} added to cart!`);
}

const itemAdder = () => {
  for (let i = 0; i < localStorage.length; i++) {
    let newItem = document.createElement("DIV");
    let itemToBeAdded = document.createTextNode(localStorage.getItem(localStorage.key(i)));
    newItem.appendChild(itemToBeAdded);
    let taskList = document.getElementById("items");
    taskList.appendChild(newItem)
  }
}
