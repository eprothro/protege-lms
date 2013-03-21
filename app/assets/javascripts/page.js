// Create the page object on document ready
jQuery(document).ready(function() {
  window.page = new Page();
});

// Page class.  This is the main class that is run when the page loads.
// This class sets up the entire page javascript functionality and interactivity.
// Long term we should refactor, subclass this page, and dynamicaly load page class at page load time.

function Page() {
  // object constructor

  // object properties

  // function calls upon initialize (called on doc ready)
  this.initPages();
}

Page.prototype = {
  constructor : Page,

  initPages : function() {
    $(".user-search").each( function() {
      var userSearch = new UserSearch($(this));
    });
  }
}
