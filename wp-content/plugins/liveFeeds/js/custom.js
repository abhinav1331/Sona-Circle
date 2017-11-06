var link = "http://localhost/sona/";
jQuery(function($) {
	jQuery('#myForm').validate({
		submitHandler: function(form) {
			var description = jQuery("textarea[name='description']").val();
			var attachmentId = jQuery("input[name='attachmentId']").val();
			if(description == "" && attachmentId == "") {
				toastr.error("One of the fields needs to be filled");
			} else {
				jQuery(form).ajaxSubmit({
					type: "POST",
					data: jQuery(form).serialize(),
					url: link+'wp-content/plugins/liveFeeds/ajax/save_feed.php', 
					success: function(data)  {
						toastr.success("feeds successfully inserted");
						jQuery("textarea[name='description']").val('');
						jQuery("input[name='attachmentId']").val('');
					}
				});	
			}
		}
		
	});
});


function deleteFeeds(word , event) {
	jQuery.ajax({
		type: "POST",
		url: link+'wp-content/plugins/liveFeeds/ajax/deleteFeeds.php',
		data:{event:event,format:'raw'},
		success:function(resp){
			jQuery(word).parent().parent().remove();
			toastr.success("feeds successfully deleted");
		}
	});
}