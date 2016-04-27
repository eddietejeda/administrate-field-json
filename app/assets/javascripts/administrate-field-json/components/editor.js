$(function() {
  var editor;
  $('.administrate-jsoneditor').each(function( index ) {

    var $current = $(this).find("textarea");
    
    var options = {    
      onChange: function(){
        var updated_json = editor.get();
        
        console.log(updated_json);
        $current.val(JSON.stringify(updated_json));
        
      }
    };
    var editor = new JSONEditor(this, options);

    editor.set(JSON.parse($current.val()));
    

  });
});