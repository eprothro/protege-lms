function UserSearch($el) {
  this.$el = $el;
  this.dataSourceURL = $el.data('source-url');

  // function calls upon initialize (called on doc ready)
  this.initSelect();

}

UserSearch.prototype = {
  constructor : UserSearch,

    initSelect : function() {
      var thiss = this;
      this.$el.select2({
        placeholder: "Search for a user",
        minimumInputLength: 1,
        ajax: { // Select2's ajax helper
            url: thiss.dataSourceURL,
            dataType: 'json',
            data: function (term, page) {
                return {
                    query: term, // search term
                };
            },
            results: function (data, page) { // parse the results into the format expected by Select2.
                // since we are using custom formatting functions we do not need to alter remote JSON data
                return {results: data};
            }
        },
        formatResult: thiss.formatResult, // omitted for brevity, see the source of this page
        formatSelection: thiss.formatSelection,  // omitted for brevity, see the source of this page
        formatInputTooShort: thiss.formatInputTooShort,
        escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results
      });
    },

    formatResult : function(el) {
        console.log(el);
        var markup = "<div>";

        markup += "<img style='margin-right: 10px' src='" + el.avatar + "'/>"
        markup += "<span class='user-name'>" + el.name + "</span>";

        markup += "</div>"
        return markup;
    },

    formatSelection : function(el) {
        return el.name;
    },

    formatInputTooShort : function(term, minLength){
      return ''
    }

}