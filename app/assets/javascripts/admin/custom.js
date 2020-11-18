$(document).ready(function($) {
  $(".img-logo-unauthen").on("click", function(){
    $("#login-modal").modal("show");
  });

  $(".change-slug").on("click", function(){
    var valInputTittle = $(".input-title").val();
    if(valInputTittle != ""){
      var valSlug = valInputTittle.trim().toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "").replace(/đ/g, "d").replace(/Đ/g, "D").replace(/\s/g, "-");
      $(".input-slug").val(valSlug + "-" + generate_code(5));
    }
  });

  $(".custom-file-input").on("change", function() {
    var fileName = $(this).val().split("\\").pop();
    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
  });

  function generate_code(number) {
    charSet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    var randomString = '';
    for (var i = 0; i < number; i++) {
      var randomPoz = Math.floor(Math.random() * charSet.length);
      randomString += charSet.substring(randomPoz,randomPoz+1);
    }
    return randomString;
  }
});
