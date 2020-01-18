App.posts = App.cable.subscriptions.create('PostsChannel', {  
    received: function(data) {
      $("#posts").removeClass('hidden')
      return $('#posts').prepend(data.html);
    }
});