$(document).ready(function(){

    window.addEventListener( 'message', function( event ) {
           var item = event.data;
   
                if ( item.conce == true ) {
                $('.container').css('display','block');
            } else if ( item.conce == false ) {
                $('.container').css("display","none");
            }
       });

    //=============================CARROS===============================//
  $("#compracarabina").click(function(){
        $.post('http://vrp_arm_polizia/compracarabina', JSON.stringify({}));2
    });
//==================================================================//
  $("#compracarabinamk2").click(function(){
        $.post('http://vrp_arm_polizia/compracarabinamk2', JSON.stringify({}));2
    });
//==================================================================//
  $("#comprapompa").click(function(){
        $.post('http://vrp_arm_polizia/comprapompa', JSON.stringify({}));2
    });
//==================================================================//
  $("#comprapompa2").click(function(){
        $.post('http://vrp_arm_polizia/comprapompa2', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraap").click(function(){
        $.post('http://vrp_arm_polizia/compraap', JSON.stringify({}));2
    });
//==================================================================//
  $("#comprapistola").click(function(){
        $.post('http://vrp_arm_polizia/comprapistola', JSON.stringify({}));2
    });
//==================================================================//
  $("#comprapdw").click(function(){
        $.post('http://vrp_arm_polizia/comprapdw', JSON.stringify({}));2
    });
//==================================================================//
  $("#comprateaser").click(function(){
        $.post('http://vrp_arm_polizia/comprateaser', JSON.stringify({}));2
    });
//==================================================================//
  $("#compratanica").click(function(){
        $.post('http://vrp_arm_polizia/compratanica', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramanganello").click(function(){
        $.post('http://vrp_arm_polizia/compramanganello', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraflare").click(function(){
        $.post('http://vrp_arm_polizia/compraflare', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraflaregun").click(function(){
        $.post('http://vrp_arm_polizia/compraflaregun', JSON.stringify({}));2
    });
//==================================================================//
  $("#compratorcia").click(function(){
        $.post('http://vrp_arm_polizia/compratorcia', JSON.stringify({}));2
    });
//==================================================================//
  $("#comprapaletta").click(function(){
      $.post('http://vrp_arm_polizia/comprapaletta', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramanganello").click(function(){
      $.post('http://vrp_arm_polizia/compramanganello', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraporto1").click(function(){
      $.post('http://vrp_arm_polizia/compraporto1', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraporto2").click(function(){
      $.post('http://vrp_arm_polizia/compraporto2', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraporto3").click(function(){
      $.post('http://vrp_arm_polizia/compraporto3', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraarmor").click(function(){
      $.post('http://vrp_arm_polizia/compraarmor', JSON.stringify({}));2
    });
//==================================================================//
  $("#compraradio").click(function(){
      $.post('http://vrp_arm_polizia/compraradio', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni1").click(function(){
      $.post('http://vrp_arm_polizia/compramuni1', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni2").click(function(){
      $.post('http://vrp_arm_polizia/compramuni2', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni4").click(function(){
      $.post('http://vrp_arm_polizia/compramuni4', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni5").click(function(){
      $.post('http://vrp_arm_polizia/compramuni5', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni6").click(function(){
      $.post('http://vrp_arm_polizia/compramuni6', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni7").click(function(){
      $.post('http://vrp_arm_polizia/compramuni7', JSON.stringify({}));2
    });
//==================================================================//
  $("#compramuni8").click(function(){
      $.post('http://vrp_arm_polizia/compramuni8', JSON.stringify({}));2
    });

   $("#close").click(function(){
        $.post('http://vrp_arm_polizia/close', JSON.stringify({}));2
    });
   
   
   })