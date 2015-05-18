// IIFE - Immediately Invoked Function Expression
  (function(yourcode) {

    // The global jQuery object is passed as a parameter
  	yourcode(window.jQuery, window, document);

  }(function($, window, document) {

    // The $ is now locally scoped 

   // Listen for the jQuery ready event on the document
   $(function() {

     s = skrollr.init()

     //Grab all elements we are going to manipulate
     goat_logo = $('#goat_logo');


     // goat_logo.attr('data-0','opacity:0');
     goat_logo.attr('data-500','opacity:0');

   });

   // The rest of the code goes here!

  }));
