document.addEventListener("DOMContentLoaded", function () {
  var quantityInput = document.getElementById("item_quantity");
  var priceInput = document.getElementById("item_price");
  var totalValueInput = document.getElementById("item_total_value");

  var updateTotalValue = function () {
    var quantity = parseInt(quantityInput.value) || 0;
    var price = parseFloat(priceInput.value) || 0;
    var totalValue = quantity * price;
    totalValueInput.value = totalValue.toFixed(2);
  };

  // Atualizar o valor quando a quantidade ou o preço mudar
  quantityInput.addEventListener("input", updateTotalValue);
  priceInput.addEventListener("input", updateTotalValue);
});
