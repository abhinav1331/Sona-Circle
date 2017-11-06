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
		url: link+'wp-content/plugins/DiscussionList/ajax/deleteFeeds.php',
		data:{event:event,format:'raw'},
		success:function(resp){
			jQuery(word).parent().parent().remove();
			toastr.success("feeds successfully deleted");
		}
	});
}

jQuery(function($) {
	jQuery('#addcity').validate({
		
		rules: {
			city: {
				required: true,
				minlength: 3
			}
		},
		messages: {
			city: {
				required: "",
				minlength: ""
			}
		},
		
		submitHandler: function(form) {
			jQuery('.message-section').hide();
			var image='<img src="'+link+'/wp-content/plugins/DiscussionList/images/loader.gif"/>';
			jQuery('.loader_section').empty().append(image);
			jQuery('.loader_section').show();
			jQuery(form).ajaxSubmit({
				type: "POST",
				data: jQuery(form).serialize(),
				url: link+'wp-content/plugins/DiscussionList/ajax/save_category.php', 
				success: function(data) 
				{
				if(data=="1")
				{
					jQuery('.loader_section').hide();
					jQuery('.message-section').empty().append('<div class="alert alert-warning" role="alert">The Category is already Exist</div>');
					jQuery('.message-section').slideDown( "slow" );
					setTimeout(function() {
						jQuery('.message-section').hide( "slow" );
					},10000);
				}
				else
				{
					jQuery('.loader_section').hide();
					jQuery('.section-table-details').empty().append(data);
					jQuery('.message-section').empty().append('<div class="alert alert-success" role="alert">Category Successfully Entered</div>');
					jQuery('.message-section').slideDown( "slow" );
					jQuery("input[name='city']").val("");
					jQuery("select[name='parentCategory']").val(0);
					setTimeout(function() {
						jQuery('.message-section').hide( "slow" );
					},10000);
					
				}
				}
			});
		}
		
	});
});

function delete_row(event , data_attr) {
	jQuery.ajax({
		type: "POST",
		url: link+'wp-content/plugins/DiscussionList/ajax/delete_category.php',
		data:{data_attr:data_attr,format:'raw'},
		success: function(resp) {
			if( resp !="") {
				jQuery('.section-table-details').empty().append(resp);
			}
			
		}
	});
}