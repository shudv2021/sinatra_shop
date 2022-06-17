function buttont_alert(){
  var x = window.localStorage.getItem('prod');
  x = x*1 + 1;
  window.localStorage.setItem('prod', x);
  alert(x);
}

function add_to_basket(id){
  var key = 'product_'+id

  var x = window.localStorage.getItem(key);
  x = x*1+1
  window.localStorage.setItem(key, x)
  show_counter(id,x);
}

function reduce_from_basket(id){
  var key = 'product_'+id
  var x = window.localStorage.getItem(key);
  x=x*1-1;
  window.localStorage.setItem(key, x);
  show_counter(id,x)
}

  
function show_counter(id,x) { 
  var el = document.getElementById(id);
  el.innerHTML = x;  
}

function get_order() {
  var order='';
  for(i=0; i < window.localStorage.length; i++){
    var key = window.localStorage.key(i);
    var value = window.localStorage.getItem(key);
    if(key.indexOf('product_')==0){
      order = order + key + "=" + value +", "; 
    }
  }
return order;
}