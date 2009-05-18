// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function(){
  
  //hide all elements with hidden
  $('.hidden').hide();
  
  //clicking on this will toggle hide/show via toggletarget
  $('.toggle').live('click',function(){ 
    $($(this).closest('[toggletarget]').attr('toggletarget')).toggle();
  });
  
  $('#reset').live('click',function(){
    $('#keywords').val($('#defaults').val());
  });
  
})
