/* Author: Ian O'Sullivan */

$(function() {
	//Fade in Menu Items starting with the first one.
	ProgressFadeItems( $('ul.bmenu li').first() );
		
	//'click' the first menu item to fade it in
	setTimeout("$('ul.bmenu li:first').trigger('click')",2500);	
	setTimeout("$('img#menu_highlight').fadeIn()",1000);	

	//Make nice jqUI buttons
	$('.button').button();
	
	//Menu functionality
	$('ul.bmenu li').on( 'click', function() {
		//Close all 'articles' and open appropriate one
		$('article.article').fadeOut('fast');
		
		//$('ul.bmenu li').removeClass('active');
		//$(this).addClass('active');
		
		//If this is a gallery item get the album id
		if( $(this).hasClass('gallery') ){
			//console.log( $(this).data('gallery') );
			$('article#gallery')
			.html('<h1>... loading images ...</h1>')
			.fadeIn('')
			.load('pages/picasa_album.cfm?album_id=' + $(this).data('gallery') + '&username=' + $(this).data('username'), function(){
				$('article#gallery a').lightBox();
				//Fade in images starting with the first one.
				ProgressFadeItems( $('article#gallery a').first() );
			});
		}
		else{
			
			/* IE bug fix */
			$('article#' + $(this).data('article') ).css('filter', 'alpha(opacity=80)');
			$('article#' + $(this).data('article') ).fadeIn('slow');			
		}
		
		//Move menu image to selected item
		//Get this menu position
		//var position = $('li[data-article="' + $(this).data('article') + '"]').position().top - 15;

		// Move/Animate 
		/*
		 * 
		$('img#menu_highlight').animate({
			top: position //Change this to use top value in next list item
		  }, 1000, function() {
			// Animation complete.
		});
		*/
				
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
	//$('article#pic_style_1 a').lightBox();	
});

function ProgressFadeItems (obj) {
	$(obj).fadeIn(200, function(){
		ProgressFadeItems( obj.next() );
	});
}

function ContactMail() {
	//Validate
	if( $('#name').val() == '' || $('#email').val() == '' || $('#tel').val() == '' || $('#msg').val() == '' ){
		//Tell user
		ShowGeneralAlert('Complete Form','Please enter all fields in the form.');
	}
	else {
		ShowGeneralAlert('Sending', 'Sending your message...', true);

		//Send off form
		$.post('pages/action/sendEmail.cfm?' + $('form#contact').serialize())
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