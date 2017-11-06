var link = "http://localhost/sona/";


function addFreecheckIn(event) {
	var freeCheckin = jQuery(event).parent().siblings("td:eq(2)").find("input").val();
	var UserEmail = jQuery(event).siblings(".thisUserEmail").val();
	var UserId = jQuery(event).siblings(".thisUserId").val();
	jQuery(".freCheIn").val(freeCheckin);
	jQuery(".freCheIn").attr("min" , freeCheckin);
	jQuery(".userIdChe").val(UserId);
	jQuery(".myEmailCheckIn>span").text(UserEmail);
	jQuery('#ActiveCheckIn').modal('show');
}

/*-------------------Contact us Home Page-----------------------*/
jQuery(function($) {
	jQuery('#FreeCheckInTable').validate({
		
		rules: {
			freCheIn: {
				required: true
			}
		},
		submitHandler: function(form) {
						
			jQuery(form).ajaxSubmit({
				type: "POST",
				data: jQuery(form).serialize(),
				url: link+'wp-content/plugins/coupons/ajax/FreeCheckInTable.php', 
				success: function(data) 
				{
					var CheckIn = jQuery(".freCheIn").val();
					var userIdChe = jQuery(".userIdChe").val();
					jQuery(".CheckIn"+userIdChe).val(CheckIn);
					jQuery('#ActiveCheckIn').modal('hide');
					toastr.success("Free CheckIn Allocated");
					
				}
			});
		}
		
	});
});
/*-------------------/Contact us Home Page-----------------------*/

/****************************Coupons Started Date******************************/
	jQuery( function() {
		jQuery( "#startCouponsDate" ).datepicker({
			minDate:0,
			onSelect: function(){
				jQuery( "#endCouponsDate" ).datepicker( "destroy" );
				var dateStart = jQuery(this).val();
				jQuery( "#endCouponsDate" ).datepicker({
					 minDate: new Date(dateStart)
				});
			}
		});
	});
/****************************Coupons Started Date******************************/


/*******************************Coupons Popup*********************************/
	function addFreeCoupons(event) {
		var UserEmail = jQuery(event).parent().siblings("td:eq(3)").find(".thisUserEmail").val();
		var UserId = jQuery(event).parent().siblings("td:eq(3)").find(".thisUserId").val();
		jQuery(".userIdCoupons").val(UserId);
		jQuery("#startCouponsDate").val("");
		jQuery("#couponName").val("");
		jQuery("#endCouponsDate").val("");
		jQuery(".myEmailCoupons>span").text(UserEmail);
		jQuery('#genrateCoupons').modal('show');
	}
/*******************************Coupons Popup*********************************/


/*-------------------Contact us Home Page-----------------------*/
jQuery(function($) {
	jQuery('#FreeCouponsTable').validate({
		
		rules: {
			startCouponsDate: {
				required: true
			},
			endCouponsDate: {
				required: true
			}
		},
		submitHandler: function(form) {
						
			jQuery(form).ajaxSubmit({
				type: "POST",
				data: jQuery(form).serialize(),
				url: link+'wp-content/plugins/coupons/ajax/FreeCouponsTable.php', 
				success: function(data) 
				{
					jQuery("#startCouponsDate").val("");
					jQuery("#endCouponsDate").val("");
					jQuery( "#endCouponsDate" ).datepicker( "destroy" );
					jQuery('#genrateCoupons').modal('hide');
					toastr.success("Coupon Genrated successfully");
				}
			});
		}
		
	});
});
/*-------------------/Contact us Home Page-----------------------*/
/*-------------------Contact us Home Page-----------------------*/
jQuery(function($) {
	jQuery('#globalFreeCouponsTable').validate({
		
		rules: {
			startCouponsDate: {
				required: true
			},
			endCouponsDate: {
				required: true
			},
			couponName: {
				required: true
			},
			couponName1: {
				required: true
			}
		},
		submitHandler: function(form) {
						
			jQuery(form).ajaxSubmit({
				type: "POST",
				data: jQuery(form).serialize(),
				url: link+'wp-content/plugins/coupons/ajax/globalFreeCouponsTable.php', 
				success: function(data) 
				{
					if(data == 1) {
						jQuery("#couponName").val("");
						jQuery("#startCouponsDate").val("");
						jQuery("#endCouponsDate").val("");
						jQuery( "#endCouponsDate" ).datepicker( "destroy" );
						toastr.success("Coupon Genrated successfully");
					} else {
						toastr.error("Coupon Already Exist");
					}
				}
			});
		}
		
	});
});
/*-------------------/Contact us Home Page-----------------------*/
/*-------------------Contact us Home Page-----------------------*/
jQuery(function($) {
	jQuery('#globalFreeCouponsSubscriptionTable').validate({
		
		rules: {
			startCouponsDate: {
				required: true
			},
			endCouponsDate: {
				required: true
			},
			couponName: {
				required: true
			},
			subscription_time: {
				required: true
			},
			couponName1: {
				required: true
			}
		},
		submitHandler: function(form) {
						
			jQuery(form).ajaxSubmit({
				type: "POST",
				data: jQuery(form).serialize(),
				url: link+'wp-content/plugins/coupons/ajax/globalFreeCouponsSubscriptionTable.php', 
				success: function(data) 
				{
					if(data == 1) {
						jQuery("#couponName").val("");
						jQuery("#startCouponsDate").val("");
						jQuery("#endCouponsDate").val("");
						jQuery( "#endCouponsDate" ).datepicker( "destroy" );
						toastr.success("Coupon Genrated successfully");
					} else {
						toastr.error("Coupon Already Exist");
					}
				}
			});
		}
		
	});
});
/*-------------------/Contact us Home Page-----------------------*/

