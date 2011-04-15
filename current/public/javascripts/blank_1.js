//this line is for recognison of ajax method. cf rails cast 136!
jQuery.ajaxSetup({ 
    'beforeSend': function(xhr) {
        xhr.setRequestHeader("Accept", "text/javascript")
        }
})

jQuery(document).ready(function () {	
	
    wasVisible = new Boolean(false);
	
    //General menu, script for uniqueness of visible element.
    jQuery('a.menuDropButton').click(function(){
        wasVisible = false;
		
        if (jQuery(this).next('div.subMenu').is(":visible")){
            wasVisible = true;
        }
		
        jQuery('.subMenu:visible').each(function(){
            jQuery(this).css("display","none");
        });
		
        if (wasVisible == false) {
            jQuery(this).next('div.subMenu').css("display", "block");
        }
    });
	
    //Effect on tabs on mouse over.
   jQuery('.munuElement').hover(
        function () {
            jQuery(this).stop().animate({
                paddingRight: "25px"
            }, 200);
        },
        function () {
            jQuery(this).stop().animate({
                paddingRight: "15px"
            });
        }
        );
	
    //Filter drop down in item list.
  jQuery('.filter').live("click", function(){
        var self = jQuery(this);
        self.next('ul.ddown').slideToggle('fast');
    });
	
	//Modal Box for footer reply
jQuery(".commentfooterReply").live('click',function(){
		jQuery('#commentReply #comment_parent_id').val(jQuery(this).attr("id"));
		jQuery.fn.colorbox({width:"660px", inline:true, href:"#commentReply"});
	});

    //RATING SYSTEM
 jQuery('.auto-submit-star').rating({
        callback: function(value, link){
            var url = jQuery("#submit_rating").attr("action");
            jQuery.ajax({
                type: "POST",
                url :url,
                data: "rated="+value,
                success: function(){
                    jQuery('input').rating('readOnly',true);
					//TODO translate
					jQuery('#notice').showMessage("Your Rating Has Been Registered", 1500);
                }
            });
        }
    });

	// Translation ajax update
jQuery('.translation_field').live("dblclick", function(){
		section=jQuery(this).attr("id").split('_');
	 	datas = "id=" + section[1] + "&section=" + jQuery('#translation_' + section[1] + "_section").val() + "&subsection=" + jQuery('#translation_' + section[1] + "_subsection").val() + "&key=" + jQuery('#translation_' + section[1] + "_key").val() + "&value=" + jQuery('#translation_' + section[1] + "_value").val();
		url= "/superadmin/translations/updating";       
          	jQuery.ajax({
            	type: "PUT",
              	url :url,
              	data: datas,
              	success: function(){
					//TODO translate
					jQuery('#notice').showMessage("Your update has been registered", 2000);
              	} 
			});   
	});

	//HINT FOR FORMS && AJAX VALIDATION
jQuery(".formElement input").focus( function() {	
		jQuery(this).nextAll('.ajax_hint_message').css('display','inline');
	});
jQuery(".formElement textarea").focus( function() {	
		jQuery(this).nextAll('.ajax_hint_message').css('display','inline');
	});
	jQuery(".formElement input").blur( function(){
		if (jQuery(this).attr("type") == "checkbox"){
			return null;
		}
		if (jQuery(this).attr("noHint") == null){
			jQuery(this).displayHintForField();
		}
	});
	
	jQuery(".formElement textarea").blur( function(){
		jQuery(this).displayHintForField();
	});
	
  jQuery('#notice').animate({
  		opacity: 1}, 1500, function(){
  	    	jQuery(this).fadeOut('fast')
  	});
	
	jQuery('#error_closing').live('click', function(){
		jQuery('#error').fadeOut('fast');
	});
	
	jQuery(".deleteLink").live('click', function(){
		var modalId = jQuery(this).attr('modal_id')
		jQuery.fn.colorbox({width:"300px", inline:true, href:modalId});
	});	
	jQuery(".deleteClose").click(function(){
		jQuery.fn.colorbox.close();
	});

	jQuery('#fck_insert_image').colorbox({width:"600px", onComplete:function(){jQuery('#images_tabs').tabs();}});
	jQuery('#fck_insert_link').colorbox({width:"600px", onComplete:function(){jQuery('#insert_link').tabs();}});
	jQuery('#fck_insert_video').colorbox({width:"600px", onComplete:function(){jQuery('#videos_tabs').tabs();}});
	jQuery('#fck_insert_audio').colorbox({width:"600px", onComplete:function(){jQuery('#audios_tabs').tabs();}});
	
	jQuery('#fck_insert_gallery').colorbox({width:"700px"});
	
	jQuery('#insert_gallery button').live('click', function(){
		//get the datas of checked checkboxes
		
		if (jQuery('#gallery_name').val() == "" || jQuery("#insert_gallery input:checked").length <= 0){
			jQuery('#warning').html("Enter a name and select some pics");
		}
		
		else{
			var escapedName = jQuery('#gallery_name').val().replace(/\./g, "_");
			escapedName = escapedName.replace(/:/g, "_");
			escapedName = escapedName.replace(/\//g, "_");
			escapedName = escapedName.replace(/ /g, "_");
		
			var data = { 'list_of_pics[]' : [], 'gallery_name' : escapedName};
		
			jQuery("#insert_gallery input:checked").each(function() { data['list_of_pics[]'].push(jQuery(this).val());});
			//send the request
			jQuery.ajax({
	        	type: "PUT",
	          	url: "/admin/ck_insert/gallery",
	          	data: data,
	          	success: function(html){
					//TODO translate
					CKEDITOR.instances.ckInstance.insertHtml(html);
					jQuery.fn.colorbox.close();
	          	} 
			});
		}
	});
	
	jQuery('#insert_image a').live('click', function(){
		stringToInsert = '<img src="' + jQuery(this).attr("picSrc") +'" ';
		if (jQuery('#image_align').val() != ""){
			stringToInsert += 'align="' + jQuery('#image_align').val() +'" ';
		}
		if (jQuery('#image_width').val() != "" && !isNaN(jQuery('#image_width').val())){
			stringToInsert += 'width="' + jQuery('#image_width').val() + 'px" '; 
		}
		stringToInsert +=  + '"/>'
		
		jQuery('#image_align').val("");
		jQuery('#image_width').val("");
		
		CKEDITOR.instances.ckInstance.insertHtml(stringToInsert);
		
		jQuery.fn.colorbox.close();
	});
	
	
	jQuery('.item_list a').live('click', function(){
		stringToInsert = '';
		
		if (CKEDITOR.instances.ckInstance.getSelection().getNative() != ""){
			stringToInsert += '<a href="' + jQuery(this).attr('itmUrl') + '">';
			stringToInsert += CKEDITOR.instances.ckInstance.getSelection().getNative();
			stringToInsert += '</a>';
		}
		
		CKEDITOR.instances.ckInstance.insertHtml(stringToInsert);
		
		jQuery.fn.colorbox.close();
	});
	
	
	jQuery('#insert_video a').live('click', function(){
		
		stringToInsert = '<embed ';
		if (jQuery('#player_width').val() != "") {
			stringToInsert += 'width="' + ('#player_width').val() +'" '; 
		}else{
			stringToInsert += 'width="370" '; 
		}
		if (jQuery('#player_height').val() != "") {
			stringToInsert += 'height="' + ('#player_height').val() +'" '; 
		}else{
			stringToInsert += 'height="257" '; 
		}
		
		stringToInsert +='flashvars="&image=' + jQuery(this).attr('itmUrl') + '/1.png&file=' + jQuery(this).attr('itmUrl');
		stringToInsert += '&allowfullscreen="true" allowscriptaccess="always" quality="high" src="/players/videoplayer.swf" type="application/x-shockwave-flash"/>';
				
		CKEDITOR.instances.ckInstance.insertHtml(stringToInsert);
		
		jQuery.fn.colorbox.close();
	});

	jQuery('#insert_audio a').live('click', function(){
		stringToInsert = '<embed allowfullscreen="true" allowscriptaccess="always" quality="high"';
		stringToInsert += ' flashvars="&playerID=1&soundFile=' + jQuery(this).attr('itmUrl');
		stringToInsert += '" src="/players/audioplayer.swf" type="application/x-shockwave-flash"/>';
		CKEDITOR.instances.ckInstance.insertHtml(stringToInsert);
		
		jQuery.fn.colorbox.close();
	});
	
	jQuery('.audit_changes_tip').tipsy();
	
	jQuery('#filter').keyup(function(){
		var filter = jQuery(this).val();
		var count = 0;
		
		jQuery(".filtered:first li").each(function () {
			if (jQuery(this).text().search(new RegExp(filter, "i")) < 0) {
		 		jQuery(this).addClass("hidden");
			}else {
				jQuery(this).removeClass("hidden");
		 		count++;
		 	}
		});		
		jQuery('#number_of_item').html(count);
	});

        jQuery('#filter2').keyup(function(){
		var filter = jQuery(this).val();
		var count = 0;

		jQuery(".filtered:first tr").each(function () {
			if (jQuery(this).text().search(new RegExp(filter, "i")) < 0) {
		 		jQuery(this).addClass("hidden");
			}else {
				jQuery(this).removeClass("hidden");
		 		count++;
		 	}
		});
		jQuery('#number_of_item').html(count);
	});

        jQuery('#filter3').keyup(function(){
		var filter = jQuery(this).val();
		var count = 0;

		jQuery(".filtered:first option").each(function () {
			if (jQuery(this).text().search(new RegExp(filter, "i")) < 0) {
		 		jQuery(this).addClass("hidden");
			}else {
				jQuery(this).removeClass("hidden");
		 		count++;
		 	}
		});
		jQuery('#number_of_item').html(count);
	});
	
	jQuery('#comments_filter').keyup(function(){
		var filter = jQuery(this).val();
		
		jQuery(".filtered:first li").each(function () {
			if (jQuery(this).text().search(new RegExp(filter, "i")) < 0) {
		 		jQuery(this).addClass("hidden");
			}else {
				jQuery(this).removeClass("hidden");
		 	}
			if (jQuery(this).next('li').text().search(new RegExp(filter, "i")) < 0) {
				jQuery(this).next('li').addClass("hidden");
			}else{
				jQuery(this).next('li').removeClass("hidden");
			}
		});
	});
	
	jQuery('#website_tabs').tabs();
	
	jQuery('#add_website_url').click(function(){
		jQuery(this).insert_field('website', '#website_url_names_list', 'website_url_names');
	});

	jQuery('#add_level_one_menu').colorbox({width:"650px"});
	jQuery('.add_sub_menu').colorbox({width:"650px"});
	
	jQuery('#sortable').tablesorter(); 
		
	jQuery('#translation_project').live('change', function(){	
		ajaxDivReplace(jQuery('#translation_project option:selected').attr('url'), "#language_configuration", "GET");
	});
	
	jQuery('#translation_lang').live('change', function(){	
		ajaxDivReplace(jQuery('#translation_lang option:selected').attr('url'), "#language_configuration", "GET");
	});
	
	jQuery('#translation_dropdown').live('change', function(){
		var data = { 'language_id' : jQuery('#language_id').val(), 'project_id' : jQuery('#project_id').val(), 'translation[translation_dropdown]' : jQuery('#translation_dropdown option:selected').val() };
		jQuery.ajax({type: "GET",
				data: data,
		   	 	url: jQuery(this).attr('url'),
		  	    success: function(html){
		  			jQuery('#language_configuration').html(html);
		       }
		 });
	});

        jQuery('#profile_selecta').live('change', function(){
		var data = { 'profile' : jQuery('#profile_selecta').val() };
                if (jQuery('#profile_selecta').val() != '') {
                    jQuery.ajax({
                        type: "GET",
                        data: data,
                        url: document.url,//'/admin/users/new', //jQuery(this).attr('url'),
                        success: function(html){
                            jQuery('#profile_part').html(html);
                        }
                    });
                } else {
                    jQuery('#profile_part').html('<div id=profile_part></div>')
                }
	});

        jQuery('#datepicker').live('click', function(){
            jQuery("#datepicker").datepicker({
                //changeMonth: true,
                //changeYear: true,
                dateFormat: 'yy-dd-mm',
                showOn: 'button',
                buttonImage: '/images/calendar.gif',
                buttonImageOnly: true
            });
	});

	jQuery('#datepicker_start').live('click', function(){
            jQuery("#datepicker_start").datepicker({
                //changeMonth: true,
                //changeYear: true,
                dateFormat: 'yy-mm-dd',
                maxDate: jQuery( "#datepicker_end" ).datepicker( "getDate" ),
                showOn: 'button',
                buttonImage: '/images/calendar.gif',
                buttonImageOnly: true
            });
	});

        jQuery('#datepicker_start').live('change', function(){
            //alert(jQuery( "#datepicker_start" ).datepicker( "getDate" ));
            jQuery("#datepicker_end").datepicker('option', 'minDate', jQuery( "#datepicker_start" ).datepicker( "getDate" ));
	});

        jQuery('#datepicker_end').live('click', function(){
            jQuery("#datepicker_end").datepicker({
                //changeMonth: true,
                //changeYear: true,
                dateFormat: 'yy-mm-dd',
                minDate: jQuery( "#datepicker_start" ).datepicker( "getDate" ),
                showOn: 'button',
                buttonImage: '/images/calendar.gif',
                buttonImageOnly: true
            });
        });

        jQuery('#datepicker_end').live('change', function(){
            jQuery("#datepicker_start").datepicker('option', 'maxDate', jQuery( "#datepicker_end" ).datepicker( "getDate" ));
        });

        jQuery("#tabass").tabs();

//        jQuery("#modal_window").live('change', function(){
//            jQuery(".ui-dialog").remove();
//            jQuery("#modal_window").dialog({
//                  modal: true,
//                  width: 600,
//                  height: 500
//            });
//        });

        
//        jQuery('#calendar').fullCalendar({
//
//        })



	// ************************************************************
	// When keyword field got focus, submit is disable, user can add
	// Keyword by pressing enter.
	// When, keyword field loose focus, submit can be clicked
	// ************************************************************
	
	// jQuery('form').submit(function(){
	// 	alert(jQuery('#submit_state').attr("disable"));
	// });
	// 
	// jQuery('#keyword_value').focus(function(){
	// 	jQuery('#submit_state').attr("disabled", "true");
	// 	alert(jQuery('#submit_state').attr("disable"));
	// });
	// 
	// jQuery('#keyword_value').blur(function(){
	// 	jQuery('#submit_state').removeAttr("disabled");
	// });
	// 
	// jQuery('#keyword_value').keyup(function(e) {
	//     if(e.keyCode == 13) {
	//         insert_keyword(jQuery(this).next('a').attr('itemclass'),"#keywords_list", "keywords_field");
	//     }
	// })
});


function ajaxDivReplace(url, div, method){
	 jQuery.ajax({type: method,
	     	 url: url,
	  	     success: function(html){
	  			jQuery(div).html(html);
	     	}
	 });
}


function ajaxSaveOfFCKContent(){
	
	var url = jQuery('#ajax_save_url').val();
	var itemId = jQuery('#item_id').val();
	var body = CKEDITOR.instances.ckInstance.getData();
	
	//if item has been saved before (get an id... in wich you can save!!)
	if (itemId != ""){
		jQuery.ajax({
	        type: "PUT",
	        url: url + itemId,
			data: 'content=' + escape(body),
	        success: function(html){
				jQuery('#notice').showMessage(html, 1500);
	        }
	    });
	}
	else {
		//TODO translate
		jQuery('#notice').showMessage("Save the whole article first", 1500);
	}
}

jQuery.fn.showMessage = function(message, delay){
	jQuery('#notice').html(message);
	jQuery('#notice').css('display', 'block');
	jQuery('#notice').animate({opacity: 1}, delay, function(){jQuery(this).fadeOut('fast')});
}

jQuery.fn.displayHintForField = function(){
	//hide the hint message
	jQuery(this).nextAll('.ajax_hint_message').css('display','none');
	//ajax validation called with attribute embeded in the input file
	var model = jQuery(this).attr("itemclass");
	var attribute = jQuery(this).attr("validate");
	var value = jQuery(this).val();
	var inputConcerned = jQuery(this);
	//lauch ajax validation on server for the current field
	jQuery.ajax({
        type: "POST",
        url: jQuery(this).attr("url"),
        data: "model="+model+"&attribute="+attribute+"&value="+value,
        success: function(html){
			element = "#hint_for_" + model + "_" + attribute;
			//if there is an error
			if (html != ""){
				//remove the previous error message
				jQuery(element).find('.formError').remove();
				//add the new error message
				jQuery(element).find('.hintMessage').append(html);
				//put red border on relative input
				jQuery(inputConcerned).css('border', '1px solid red');
			}
			else{
				//remove the form error
				jQuery(element).find('.formError').remove();
				//remove the red border
				jQuery(inputConcerned).css('border', '1px solid #ccc');
			}
        }
    });
}

function itemUploadComplete(stringToInsert){
	CKEDITOR.instances.ckInstance.insertHtml(stringToInsert);
	jQuery.fn.colorbox.close();
	jQuery('#image_file').val("");
	jQuery('#video_file').val("");
	jQuery('#audio_file').val("");
}

function autocomplete_on(array, div){

    if(div == '#keyword_value'){
        jQuery(div).autocomplete(array);
    }
    
    if (div == '#user_login'){
        jQuery(div).autocomplete(array,{
            minChars: 0,
            width: 310,
            matchContains: "word",
            autoFill: false,
            formatItem: function(row, i, max) {
                return row.login + "[" + row.name + "]" + "[" + row.email + "]";
            },
            formatMatch: function(row, i, max) {
                return row.login + " " + row.name + " " + row.email;
            },
            formatResult: function(row) {
                return row.login;
            }
        });
    }
}


function classify_bar(url) {
    jQuery.ajax({
        type: 'GET',
        url: url,
        dataType: "script",
        success:function(html){
			
        }
    });
}


function add_new_user(url){
    var user_login = jQuery('#user_login').val();
    var role_id = jQuery('#user_role').val();
    if(user_login != 0){
        if(jQuery("#workspace_user_" + user_login)[0] == null){
            jQuery.ajax({
                type: 'GET',
                url: url,
                data: "user_login="+user_login+"&role_id=" + role_id,
                dataType: "script",
				success:function(html){
					jQuery('#notice').showMessage("User Added Successfully", 1500);
				}
            });
        }else{
			//TODO translate
            jQuery('#warning').showMessage("User is already existing", 1500);
        }
        jQuery('#user_login').val('');
    }

}

function show_people(container_id){
    var start_with = jQuery('#start_with').val();
    var group_id = jQuery('#group_id').val();
    var url = "/admin/workspaces/"+container_id+"/groups/filtering_contacts/";
    jQuery.ajax({
        type: 'GET',
        url: url,
        data: "start_with="+start_with+"&group_id="+group_id,
        dataType: "script"
    });
}

function show_artworks(exhibition_id){
    var start_with = jQuery('#artworks_start_with').val();
    var url = "/admin/exhibitions/filtering_artworks";
    jQuery.ajax({
        type: 'GET',
        url: url,
        data: "start_with="+start_with+"&exhibition_id="+exhibition_id,
        dataType: "script"
    });
}

function show_new_selection(daurl, object_id){
    var start_with = jQuery('#filter_with').val();
    var url = daurl;
    jQuery.ajax({
        type: 'GET',
        url: url,
        data: "filter_with="+start_with+"&object_id="+object_id,
        dataType: "script"
    });
}

function selectAll(chkObj,id){
    var multi=document.getElementById(id);
    if(chkObj)
        for(i=0;i<multi.options.length;i++)
            multi.options[i].selected=true;
    else
        for(i=0;i<multi.options.length;i++)
            multi.options[i].selected=false;
}


function insert_keyword(model_name, place, field_name){
    var name = jQuery('#keyword_value').val();
    var key_words = name.split(',')
    for(var i=0; i < key_words.length; i++){
        var name = key_words[i].replace(/(^\s+|\s+jQuery)/g, "");
        name = replaceChar(name, ".","_")
        if(name != 0 && name.length == (name.replace(/<(\S+).*>(|.*)<\/(\S+).*>|<%(.*)%>|<%=(.*)%>+/g, "")).length){
            var hidden_field = "<input type='hidden' id='"+model_name+"_"+field_name+"' value='"+name+"' name='"+model_name+"["+field_name+"][]'>";
            jQuery(place).append("<div id='"+name+"' class='keyword_label'><span>"+hidden_field+name+"</span><a href='#' onclick='jQuery(\"#" + name + "\").remove(); return false;'>X</a></div>")
        }
        jQuery('#keyword_value').val('');
		jQuery('#keyword_value').focus();
    }
}

jQuery.fn.insert_field = function(model_name, place, field_name){
    var name = jQuery('#website_url_name_value').val();
	var escapedName = name.replace(/\./g, "_");
	escapedName = escapedName.replace(/:/g, "_");
	escapedName = escapedName.replace(/\//g, "_");
    var field_values = name.split(',');
    for(var i=0; i < field_values.length; i++){
        var name = field_values[i].replace(/(^\s+|\s+jQuery)/g, "");
        if(name != 0 && name.length == (name.replace(/<(\S+).*>(|.*)<\/(\S+).*>|<%(.*)%>|<%=(.*)%>+/g, "")).length){
            var hidden_field = '<input type="hidden" id="'+model_name+'_'+field_name+'" value="'+name+'" name="'+model_name+'['+field_name+'][]"/>';

			var siteUrlField = '<div id="' + escapedName + '" class="keyword_label"><span>' + hidden_field + name + '</span>';
			siteUrlField += '<a href="javascript:;" onclick="jQuery(\'#' + escapedName + '\').remove();">X</a></div>';
			
            jQuery(place).append(siteUrlField);
        }
        jQuery('#website_url_name_value').val('');
		jQuery('#website_url_name_value').focus();
    }
}

// Function to get encodig progress
function get_encoding_progress(item_id,item_type){
  var url = "/admin/"+item_type+"s/"+item_id+"/get_"+item_type+"_progress";
  jQuery.ajax({
    type: "GET",
    url: url,
    data: "check=true",
    success: function(response){
      if(response == 'encoded'){
	      jQuery.ajax({
	        type: "GET",
	        url: url,
	        data: "check=false",
	        dataType: "script"
	      });
	    }else if(response == 'encoding_error'){
	      jQuery.ajax({
	        type: "GET",
	        url: url,
	        data: "check=false&status=fail"
	      });
	    }else{
	      get_encoding_progress(item_id,item_type);
	    }
    }
  });
}

var file1="";
function LimitAttach(form, file, allowed_types, alert_message) {
    var a = jQuery('#submit_button');
    allowSubmit = false;
    if(file1 == file) return;
    if (!file) return;
    while (file.indexOf("\\") != -1)
        file = file.slice(file.indexOf("\\") + 1);
    ext = file.slice(file.lastIndexOf(".")).toLowerCase();
    for (var i = 0; i < allowed_types.length; i++)
    {
        if (allowed_types[i] == ext) {
            allowSubmit = true;
            a.disabled = '';
            break;
        }
    }
    if (!allowSubmit){
        alert(alert_message)
        a.disabled = 'true';
    }
}

// to move option value from one select box to another select box
function shiftRight(removeOptions, addOptions, selectedOptionsDom)
{
    var availableOptions = document.getElementById(removeOptions);
    var assignedOptions = document.getElementById(addOptions);
    var selectedOptions = new Array();
    for(i=availableOptions.options.length-1;i>=0;i--)
    {
        if(availableOptions.options[i].selected){
            var optn = document.createElement("OPTION");
            optn.text = availableOptions.options[i].text;
            optn.value = availableOptions.options[i].value;
            assignedOptions.options.add(optn);
            availableOptions.remove(i);
        }else{
            selectedOptions.push(availableOptions.options[i].value);
        }
    }

    document.getElementById(selectedOptionsDom).value = selectedOptions
}

function selectItemTab(idSelected){
		
    // get the tabs links on witch we should change the class
    var tabsElements = document.getElementById('tabs').getElementsByTagName('li');
		
    for (var i = 0 ; i < tabsElements.length ; ++i){
        if (tabsElements[i].id == idSelected){
            tabsElements[i].className = 'selected';
        }
        else{
            tabsElements[i].className = '';
        }
    }
}

function shiftLeft(removeOptions,addOptions,selectedOptionsDom)
{
    var availableOptions = document.getElementById(removeOptions);
    var assignedOptions = document.getElementById(addOptions);
    var selectedOptions = new Array();
    for (i=0;i<assignedOptions.options.length; i++){
        selectedOptions.push(assignedOptions.options[i].value);
    }
    for (i=0; i<availableOptions.options.length; i++){
        if (selectedOptions.indexOf(availableOptions.options[i].value) <0 && availableOptions.options[i].selected) {
            selectedOptions.push(availableOptions.options[i].value);
            var optn = document.createElement("OPTION");
            optn.text = availableOptions.options[i].text;
            optn.value = availableOptions.options[i].value;
            assignedOptions.options.add(optn);
        }
    }
    for(i=availableOptions.options.length-1;i>=0;i--)
    {
        if(availableOptions.options[i].selected)
            availableOptions.remove(i);
    }
    document.getElementById(selectedOptionsDom).value = selectedOptions;
}

function replaceChar(str, from_char, to_char){
  for(var i=0;i < str.length;i++){
    if(str[i] == from_char){
      str = str.replace(from_char,to_char);
    }
  }
  return str;
}

function add_new_follower(){
    //getting the mail value
    var email = jQuery('#new_follower_email').val();
    //cleaning for jQuery to understand the div ID.
    var emailDivId = replaceChar(email, "@","_")
    var emailDivId = replaceChar(emailDivId, ".", "_");
	
    if(email != 0){
        //creating a new div with ID, for deletion possible.
        var new_email = "<div id='" + emailDivId + "'>";
        new_email += email + " | <a onclick=\"jQuery('#" + emailDivId + "').remove()\">DELETE</a>";
        new_email += "<input type='hidden' name='configuration[sa_exception_followers_email][]' value='"+email+"'></div>";

        //adding the mail to the follower list.
        jQuery('#followers_email').append(new_email);
        //reseting form.
        jQuery('#new_follower_email').value = '';
    }
}

// to delete js/images/css file from websites
function delete_asset(element, file_path){
    if(confirm('Are you sure?')){
        jQuery.ajax({
            type: "GET",
            url: '/admin/websites/delete_asset',
            data: "file_path="+file_path,
            dataType: "script",
            success:function(html){
                    jQuery(element).parent().remove();
					jQuery('#notice').showMessage("Asset Deleted Successfully", 1500);
				}
      });
    }
}

function remove_fields(link) {
  jQuery(link).prev("input[type=hidden]").val("1");
  jQuery(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  jQuery(link).parent().before(content.replace(regexp, new_id));
}

