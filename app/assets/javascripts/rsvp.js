(function(yourcode) {
  yourcode(window.jQuery, window, document);

}(function($, window, document) {
  $(function() {
    $('.submit_rsvp').hide();
    $('#details').hide();

    if($('#rsvp input[name=response]:checked').val() == 'attending'){
      $('#details').show();
    }else{
      $('#details').hide();
    }
    

    $('#rsvp input').change(function(){
      $('.submit_rsvp').show();
      if($('#rsvp input[name=response]:checked').val() == 'attending'){
        $('#details').show();
      }else{
        $('#details').hide();
      }
    });
    


  });
}));