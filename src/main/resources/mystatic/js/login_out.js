var logout = document.getElementById("login_out");
logout.onclick = function () {
    var message = "确定要退出吗？";
    if (confirm(message)) {
        window.location.href = "http://localhost:8080/logout.do";
    } else {
        return false;
    }
}
