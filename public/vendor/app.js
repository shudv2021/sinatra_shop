function buttont_alert(){
  var x = window.localStorage.getItem('prod');
  x = x*1 + 1;
  window.localStorage.setItem('prod', x);
  alert(x);
}