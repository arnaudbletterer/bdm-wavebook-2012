jQuery.noConflict();
(function($) { 
  $(function() {
    // Ajout dynamique de nouveau champs d'upload (inscription)
    $("button#add_field").click(function (){
	var nb = $('div.upload').length;
	
	if(nb < 5)
		$('div.upload:eq('+(nb-1)+')').after('<div class="control-group upload"><label class="control-label" for="avatar'+(nb+1)+'">Autre image de profil</label><div class="controls"><input type="file" name="file_'+(nb+1)+'" id="avatar'+(nb+1)+'" /></div></div>');
	
	});

  });
})(jQuery);
