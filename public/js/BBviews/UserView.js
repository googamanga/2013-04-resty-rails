var UserView = Backbone.View.extend({

  initialize: function(){
    this.model.bind('change', this.render, this);
    this.model.retrieve();
  },

  render: function() {
    $('#loggedInUser').text(this.model.get('name'));  // USE EL!!!!
  }
});