// IIFE - Immediately Invoked Function Expression
  (function(yourcode) {

    // The global jQuery object is passed as a parameter
  	yourcode(window.jQuery, window, document);

  }(function($, window, document) {

    // The $ is now locally scoped 

   // Listen for the jQuery ready event on the document
   $(function() {
      if(typeof skrollr != 'undefined'){
        s = skrollr.init()
      }

   });

   // The rest of the code goes here!

  }));
