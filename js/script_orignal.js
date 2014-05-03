/* Author: Ian O'Sullivan */
//console.log(calendar_date);
/*
var calendar_date = new Date();
var calendar_date2 = new Date();
calendar_date2.setMonth(calendar_date2.getMonth() + 1);
var calendar_date3 = new Date();
calendar_date3.setMonth(calendar_date3.getMonth() + 2);
*/

$(function() {
	//Fade in Menu Items starting with the first one.
	ProgressFadeMenuItems( $('ul.bmenu li').first() );
		
	//'click' the first menu item to fade it in
	setTimeout("$('ul.bmenu li:first').trigger('click')",2500);	
	setTimeout("$('img#menu_highlight').fadeIn()",1000);	

	//Make nice jqUI buttons
	$('.button').button();
	
	//Menu functionality
	$('ul.bmenu li').on( 'click', function() {
		//Close 'articles' and open appropriate one
		//$('article.article').css('display','none');
		$('article.article').fadeOut('fast');
				
		/* IE bug fix */
		$('article#' + $(this).data('article')).css('filter', 'alpha(opacity=80)');
		$('article#' + $(this).data('article') ).fadeIn('slow');
		
		//console.log($(this).data('article'));
//		setTimeout( function(){ 
//			$('article#' + $(this).data('article') ).fadeIn('slow'); 
//			console.log('here');
//		}
//		, 800);
		
		//Move sun_menu to selected item
		//Get this menu position
		var position = $('li[data-article="' + $(this).data('article') + '"]').position().top - 20;

		// Move/Animate 
		$('img#menu_highlight').animate({
			top: position //Change this to use top value in next list item
		  }, 1000, function() {
			// Animation complete.
		});
				
	});
		
	// //Main Image click
	// $('img#main_image').on( 'click', function() {
		// //Click Photos
		// $('li#photo_menu_item').trigger('click');
		// //Click first image to open lightbox
		// $('article#photos a:first').trigger('click');
	// });
	
	// /* Trigger golf click on badge click*/
	// $('img#sticker').on( 'click', function() {
		// $('ul.bmenu li[data-article="golf"]').trigger('click');	
	// });
	
	//Create lightbox for pictures page
	$('article#pic_style_1 a').lightBox();	
	$('article#pic_style_2 a').lightBox();	
	$('article#pic_style_3 a').lightBox();	
	$('article#pic_style_4 a').lightBox();	
	$('article#pic_style_5 a').lightBox();	
	$('article#pic_style_6 a').lightBox();	
	$('article#pic_style_7 a').lightBox();	
	$('article#pic_style_8 a').lightBox();	 
});

function ProgressFadeMenuItems (obj) {
	$(obj).fadeIn(400, function(){
		ProgressFadeMenuItems( obj.next() );
	});
}

//$.fn.preload = function() {
//    this.each(function(){
//        $('<img/>')[0].src = this;
//    });
//}
//// Usage 1 (Multiple):
//$(function(){
//	$(['img/bg_new.jpg']).preload();
//});
//
//function AnimateHeader() {
//	//setTimeout("$('header h3').toggleClass('it-animate')",2000);
//	setInterval("$('header h3').toggleClass('it-animate')", 12000);
//}

// function CalendarsNext(){
	// //Move forward 3 months
	// calendar_date =  new Date( calendar_date.setMonth(calendar_date.getMonth()+3) );
	// calendar_date2 =  new Date( calendar_date2.setMonth(calendar_date2.getMonth()+3) );
	// calendar_date3 =  new Date( calendar_date3.setMonth(calendar_date3.getMonth()+3) );
// 
	// $('#calendar').fullCalendar( 'gotoDate', calendar_date);
	// $('#calendar2').fullCalendar( 'gotoDate', calendar_date2);
	// $('#calendar3').fullCalendar( 'gotoDate', calendar_date3);
// }
// function CalendarsPrev(){
// 
	// //Move back 3 months
	// calendar_date =  new Date( calendar_date.setMonth(calendar_date.getMonth()-3) );
	// calendar_date2 =  new Date( calendar_date2.setMonth(calendar_date2.getMonth()-3) );
	// calendar_date3 =  new Date( calendar_date3.setMonth(calendar_date3.getMonth()-3) );
// 
	// $('#calendar').fullCalendar( 'gotoDate', calendar_date);
	// $('#calendar2').fullCalendar( 'gotoDate', calendar_date2);
	// $('#calendar3').fullCalendar( 'gotoDate', calendar_date3);
// }

function ContactMail() {
	//Validate
	if( $('#name').val() == '' || $('#email').val() == '' || $('#tel').val() == '' || $('#msg').val() == '' ){
		//Tell user
		ShowGeneralAlert('Complete Form','Please enter all fields in the form.');
	}
	else {
		ShowGeneralAlert('Sending', 'Sending your message...', true);

		//Send off form
		$.post('pages/action/email.cfm?' + $('form#contact').serialize())
		.success(function(data) {
			//If new content page prepend it to the table
			//$('#content_data_table tbody').prepend( data );
			ShowGeneralAlert('Message Sent','Your message has been sent. I\'ll get back to you as soon as possible.<br/><br/>Thank you. ');
			$('form#contact input,textarea').val('');
		});
	}
}

function ShowGeneralAlert(ttl, msg, hide_close_button){
	if (!hide_close_button) {
		$('#alert_popup').dialog({ 
			buttons:{
				Close: function() {
					$( this ).dialog( "close" );
				}
			},
			modal:true
		});
	}
	else {
		//Hide button
		$('#alert_popup').dialog({ 
			buttons:{},
			modal:true
		});
	}	
	//Set the title and message
	$('#alert_popup').dialog( 'option', 'title', ttl );
	$('#alert_msg').html(msg);	
}

function ContactMe() {
	$('ul.bmenu li[data-article=contact]').trigger('click')
}