(function($){
  $(document).ready(function(){

    // Remove an item from the cart by setting its quantity to zero and posting the update form
    $('form#updatecart a.delete').show().live('click', function(e){
      $(this).parents('tr').find('input.line_item_quantity').val(0);
      $(this).parents('form').submit();
      e.preventDefault();
    });

  });

	$("[data-fancybox]").live("click", function() {
    console.log($(this).attr("data-fancybox"));
    $.fancybox.open(
      [{ href: $(this).attr("data-fancybox") }],
      {
        openEffect: 'elastic',
        openEasing: 'easeOutBack',
        closeEffect: 'elastic',
        closeEasing: 'easeInBack'
      }
    );
  });

})(jQuery);
