function alertTest(){
  alert('this is only a test');
}

// need to host externally
function addVideo(){
    $.ajax({
    url: 'localhost:3000/videos/submit?video[title]='+ document.title +'&video[url='+ document.location.href +']',
    type: 'POST',
    success: function(){
      console.log('yay');
    },
    error: function(){
      console.log('boo');
    }
  })
}
