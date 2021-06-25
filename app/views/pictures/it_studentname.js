//=require jquery
//=requirejquery_ujs
$(function(){$(document).on('click','.change-class',
    function(){
        data = {
            gakka_id:$(this).val()
        };
        //ajaxの処理
        $.ajax({
            url:"test_html",
            type:"GET",
            data:data,
            dataType:"html"
        })
        //成功時処理
        .done(function(data){
            $('#content-field').html(data);
        })
        //失敗時処理
        .fail(function(){
            alert('データの取得に失敗しました。');
        });
    });
});