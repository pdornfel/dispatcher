var getNotices = function(){
  $.ajax({
    url: '/notices.json',
    dataType: 'json',
    success: function(res){
      console.log(res);
    },
    error: function(req, status, err){
      console.log(status, err)
    }
  });
}

var saveNotice = function(title, description){
  $.ajax({
    type: 'POST',
    url: '/notices',
    dataType: 'json',
    data: {"notice[title]": title, "notice[description]": description},
    success: function(res){
      renderNotice(res);
    },
    error: function(req, status, err){
      console.log(status, err)
    }
  });
}

var renderNotice = function(notice){
  $('tbody').append("<tr><td>"+notice.title+"</td>"+"<td>"+notice.description+"</td><td></td><td></td><td></td><td></td></tr>");
}
