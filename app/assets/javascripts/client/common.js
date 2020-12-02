$(function(){
  window.location.hash = ""

  $("img.lazy-load, .product-image img.lazy-load").lazyload({
    event: "scroll.lazyload",
    effect: "fadeIn",
  }).trigger("lazyload");

  $("img.lazy-header").lazyload({
    event: "lazyload",
    effect: "fadeIn",
  }).trigger("appear");

  $("#search_post").on("click", function(){
  	var textSearch = $("#searchproduct-item").val();

  	$.ajax({
      url: "/posts",
      method: "GET",
      data: {
        q: {
          name_cont: textSearch
        }
      },
      dataType: "script"
    });
  });
});
