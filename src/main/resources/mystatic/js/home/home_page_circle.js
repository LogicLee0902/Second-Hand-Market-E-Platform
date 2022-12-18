/**

 */
$(function () {
    var time_out = setTimeout(moveToRight, 3500);
    var isMove = false;
    $('.right_turn').click(function () {
        if (!isMove) {
            clearTimeout(time_out);
            isMove = true;
            moveToRight();
        }
    });
    $('.left_turn').click(function () {
        if (!isMove) {
            clearTimeout(time_out);
            isMove = true;
            currentMoveToLeft();
        }
    });
    function moveToRight() {
        clearTimeout(time_out);
        nextPrepare();
        $('.current h1').animate({left: 250}, 300, function () {
            $('.current p').animate({left: 250}, 300, function () {
                $(this).animate({left: -200, opacity: 0}, 500, function () {
                    $(this).hide(0);
                });
                $('.current .slide_img').animate({left: "40%"}, 800, function () {
                    $('.current .slide_img').animate({left: -200, opacity: 0}, 800, function () {
                        moveToNext();
                        $(this).hide(0);
                    });
                })
            });
            $('.current h1').animate({left: -200, opacity: 0}, 500, function () {
                $(this).hide(0);
            });
        })
    }

    function moveToNext() {
        var temp = $('.current').next();
        if (temp.attr("class") != "my_slide") {
            temp = $('.my_slide:first');
        }
        temp.css({left: "80%"}).show(0).animate({left: "10%", opacity: 1}, 1000, function () {
            $('.current').hide(0);
            $('.current').removeClass("current");
            temp.addClass("current").css({"z-index": 0});
            time_out = setTimeout(moveToRight, 3500);
            isMove = false;
        });
    }

    function nextPrepare() {
        var temp = $('.current').next();
        if (temp.attr("class") != "my_slide") {
            temp = $('.my_slide:first');
        }
        temp.css({opacity: 0}).show(0);
        temp.children("h1").css({left: "10%", opacity: 1}).show(0);
        temp.children("p").css({left: "10%", opacity: 1}).show(0);
        temp.children(".slide_img").css({left: "-15%", opacity: 1}).show(0);
    }

    function currentMoveToLeft() {
        clearTimeout(time_out);
        prevPrepare();
        $('.current .slide_img').animate({left: "41%"}, 800, function () {
            $('.current h1').animate({left: "15%"}, 400);
            $('.current p').animate({left: "0%"}, 400, function () {
                $('.current h1').animate({left: "5%"}, 600, function () {
                    $(this).animate({left: "120%", opacity: 0}, 800, function () {
                        $(this).hide(0);
                    });
                });
                $(this).animate({left: "120%", opacity: 0}, 800, function () {
                    $(this).hide(0);
                    moveToPrev();
                });
            });
            $(this).animate({left: "120%", opacity: 0}, 800, function () {
                $(this).hide(0);
            });
        });
    }

    function prevPrepare() {
        var temp = $('.current').prev();
        if (temp.attr("class") != 'my_slide') {
            temp = $('.my_slide:last');
        }
        temp.css({opacity: 0}).show(0);
        temp.children("h1").css({left: "10%", opacity: 1}).show(0);
        temp.children("p").css({left: "10%", opacity: 1}).show(0);
        temp.children(".slide_img").css({left: "-15%", opacity: 1}).show(0);
    }

    function moveToPrev() {
        var temp = $('.current').prev();
        if (temp.attr("class") != 'my_slide') {
            temp = $('.my_slide:last');
        }
        temp.css({left: "-70%"}).show(0).animate({left: "10%", opacity: 1}, 800, function () {
            $('.current').hide(0);
            $('.current').removeClass("current");
            temp.addClass("current").css({"z-index": 0});
            time_out = setTimeout(moveToRight, 3500);
            isMove = false;
        });
    }
    $('.buy').click(function () {
        var id = $(this).attr('value');
        $.ajax({
            url:'/insertGoodsCar.do',
            dataType:'JSON',
            type:'post',
            data:{id:id},
            success:function (data) {
                var result = data.result;
                if (result == '2'){
                    alert('您还未登录，请先登录！！！');
                } else if (result == '1'){
                    alert('加入购物车成功');
                } else if (result == '0'){
                    alert('加入购物车失败');
                } else {
                    alert('发生了错误，请检测网络');
                }
            }
        })
    });

});
