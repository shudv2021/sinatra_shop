function buttont_alert(){
  var x = window.localStorage.getItem('prod');
  x = x*1 + 1;
  window.localStorage.setItem('prod', x);
  alert(x);
}

function add_to_basket(id){
  var x = window.localStorage.getItem('product_'+id);
  x = x*1+1
  window.localStorage.setItem('product_'+id, x)
  show_counter(id,x);
}

function reduce_from_basket(id){
  var x = window.localStorage.getItem('product_'+id);
  x=x*1-1;
  window.localStorage.setItem('product_'+id, x);
  show_counter(id,x)
}

  
function show_counter(id, x) {
  var el = document.getElementById(id);
  el.value = x;
  location.reload(); 
  }