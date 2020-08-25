/*メッセージ*/
var msg_cancel = "Do you Want To Cancel ?";
var msg_register = "Do you Want To Register ?";
var msg_update = "Do you Want To Update ?";

/* メッセージを確認する */
function verifyMsg(page) {
var msg = '';

if (page == "Register") {
	msg = msg_register;
} else if(page == "Update") {
	msg = msg_update;
} else if(page == "Cancel") {
	msg = msg_cancel;
}

return msg;
}

/* フォーム提出 */
function formSubmit(page){
	var alertmsg = verifyMsg(page);
	if(confirm(alertmsg)){
		$('form').submit();
	}
}

/* data-hrefで指定したページに戻る */
$(document).on('click',".page-return",function () {
// $(".page-return").click(function () {
	var alertmsg = verifyMsg($(this).data('act'));
	if(confirm(alertmsg)){
	  window.location.href = $(this).data('href');
	}
});

/*$(document).on('click', '.delete-btn', function(e) {
    e.preventDefault();
    var self = $(this);
    swal({
            title: "Delete?",
            text: "Are you sure you want to delete this category?",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: true
        },
        function(isConfirm){
            if(isConfirm){
                swal("Deleted!","Category deleted", "success");
                setTimeout(function() {
                    self.parents(".delete_form").submit();
                }, 1000);
            }
            else{
                swal("cancelled","Your category is safe", "error");
            }
        });
});*/
// $(document).ready(function() {
//     $(".onchange-class").on('change', function(e){
//         alert();
//     });
// });