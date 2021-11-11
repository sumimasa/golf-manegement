

$(window).on('load',function(){
  //ロゴを1.2秒でフェードアウトする記述
  $("#splash-new-logo").delay(800).fadeOut('slow')
  //=====ここからローディングエリア（splashエリア）を1.5秒でフェードアウトした後に動かしたいJSをまとめる
  $("#splash-new").delay(1000).fadeOut('slow',function(){//ローディングエリア（splashエリア）を1.5秒でフェードアウトする記述
  
  $('body').addClass('appear');//フェードアウト後bodyにappearクラス付与
  
  });
  //=====ここまでローディングエリア（splashエリア）を1.5秒でフェードアウトした後に動かしたいJSをまとめる
  
  
  
  });


  