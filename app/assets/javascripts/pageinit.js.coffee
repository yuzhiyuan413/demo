
$(()-> 
  $('#bs-navbar-collapse li[data-val='+$('body').attr('data-val')+']').addClass('active')
)