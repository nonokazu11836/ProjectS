$(function(){
    $(document).on('click','change-class',
    function(){
        data = {
            class_id:$(this).val()
        };
        //ajaxの処理
        $ajax({
            url:'it_member',
            type:"GET",
            data:data,
            dataType:"html"
        })
        //失敗時処理
        .fail(function(){
            alert('データの取得に失敗しました。')
        })
    });
});