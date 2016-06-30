$(function() {
  var editor;
  $('.administrate-jsoneditor').each(function( index ) {

    var $current = $(this).find("textarea");
    
    var options = {    
      onChange: function(){
        try {
          var updated_json = editor.get();
        } catch(err) {
          console.log(err);
        }

        $current.val(JSON.stringify(updated_json));
      },
      onError: function (err) {
        alert(err.toString());
      },
      mode: 'tree',
      modes: ['text', 'tree'],
    };

    var editor = new JSONEditor(this, options);

    editor.set(JSON.parse($current.val()));
  });
});