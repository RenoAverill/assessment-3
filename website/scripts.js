let addToCartButtons = document.getElementsByClassName('add')
let removeButton = document.getElementsByClassName('remove')

if (document.readyState == 'loading') {
  document.addEventListener('DOMContentLoaded', running)
}else {
  running()
}


function running() {
  for (let i = 0; i < addToCartButtons.length; i++) {
    let button  = addToCartButtons[i]
    button.addEventListener('click', addToCartClicked)
  }
  for (let i = 0; i< removeButton.length; i++) {
    let button = removeButton[i]
    button.addEventListener('click', removeItem)
  }
}
function addToCartClicked(event) {
  var button = event.target
  var shopItem = button.parentElement.parentElement
  var title = shopItem.getElementsByClassName('product-name')[0].innerText
  var price = shopItem.getElementsByClassName('product-price')[0].innerText
  // var imageSrc = shopItem.getElementsByClassName('product-image')[0].src
  addToCart(title, price)
  updateCartTotal()
}

function addToCart(title, price) {
  // let productName = document.getElementsByClassName('product-name')[0]
  // let productPrice = document.getElementsByClassName('product-price')[0]
  let cartRow = document.createElement('div');
  cartRow.classList.add('cart-row');
  let cartItems = document.getElementsByClassName('items')[0]
  let cartRowContents = `
        <div class="cart-items">
            <span class="product-name">${title}</span>
        </div>
        <span class="product-price">${price}</span>
            <button class="remove" type="button">REMOVE</button>
        </div>`
  cartRow.innerHTML = cartRowContents
  console.log(cartRow)
  cartItems.append(cartRow)
  updateCartTotal()
}

function removeItem(event) {
  let buttonClicked = event.target
  buttonClicked.parentElement.parentElement.remove()
  updateCartTotal()
}


function updateCartTotal(){
  let cartItemContainer = document.getElementsByClassName('items')[0]
  let cartRows = cartItemContainer.getElementsByClassName('cart-row')
  let total = 0
  for (let i = 0; i< cartRows.length; i++) {
    let cartRow = cartRows[i]
    let priceElement = cartRow.getElementsByClassName('cart-price')[0]
    let price = parseFloat(priceElement.innerText.replace('$',''))
    total += price
  }
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
};
