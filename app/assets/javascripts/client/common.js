$(function(){
	$("img.lazy-load, .product-image img.lazy-load").lazyload({
    event: "scroll.lazyload",
    effect: "fadeIn",
  }).trigger("lazyload");

  $("img.lazy-header").lazyload({
    event: "lazyload",
    effect: "fadeIn",
  }).trigger("appear");

});