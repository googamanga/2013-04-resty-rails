var UsersView = Backbone.View.extend({

  tagName: "div",

  className: "user-record",

  // template: _.template($('#user-list-template').html()),

  // events: {
  //   "click .icon":          "open",
  //   "click .button.edit":   "openEditDialog",
  //   "click .button.delete": "destroy"
  // },

  initialize: function() {
    this.collection = new Users();
    this.render();
  },

  render: function() {
    // this.collection.fetch({
    //   // success: function(users){},
    //   // error: function(res){
    //   //   console.log('failed on Users fetch, responce:', res);
    //   }
    // });
  }
});