function alertTest(){
  alert('this is only a test');
}

function addVideo(){
  $.ajax({
    url: 'localhost:3000/videos',
    type: 'POST',
    data: {video: {title: 'Shadow of Mordor', url: 'https://www.youtube.com/watch?v=GDfAIGxOSTw'} },
    success: function(data){
      console.log('data sent');
    },
    error: function(){
      console.log('post denied, sucka');
    }
  })
}
