var User = Backbone.Model.extend({
  urlRoot: '/users/1',

  retrieve: function(){
    that = this;
    this.fetch();
    // this.fetch({
    //   success: function(){
    //     that.render();
    //   }
    // });
  }
});