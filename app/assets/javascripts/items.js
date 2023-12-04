// app/assets/javascripts/items.js
$(document).on('turbolinks:load', function() {
  $('.item-checkbox').on('change', function() {
    $(this).closest('form').submit();
  });
});
