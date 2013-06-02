var AppView = Backbone.View.extend({

  el: $('#title-bar'),

  model: new User(),

  events

  render: function() {
    $title = $('<strong/>Critical Mass');
    this.$el.children('first').append($title);
  }
});