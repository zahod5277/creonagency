var fadeSpeed = 400;
var animation;
var success_message = $('#success').html();
var validateSettings = {
    emtyMessages: {
        email: 'Укажите e-mail',
        phone: 'Укажите телефон',
        name: 'Укажите Ваше имя',
        unknown: 'Это поле обязательно'
    },
    invalidMessages: {
        email: 'Не корректный e-mail',
        phone: 'Не корректный номер'
    },
    pregs: {
        email: /^[-._a-z0-9]+@(?:[a-z0-9][-a-z0-9]+\.)+[a-z]{2,6}$/,
        phone: /^[0-9\-\(\)\+\s]{6,30}$/i
    }
};

$(function() {
	$('form input[type=text], form textarea').each(function(){
		$(this).attr('title',$(this).attr('placeholder'));
	});
	/*$('form textarea').each(function(){
		$(this).attr('title',$(this).val());
	});*/
	
	$('form input[type=text], form textarea').bind('click keydown',function(){
		$(this).attr('placeholder','');
	});
	$('form input[type=text], form textarea').bind('blur',function(){
		$(this).attr('placeholder',$(this).attr('title'));
	});

    $('.sendLead').submit(function(e) {
        e.preventDefault();
        var send = true;
        var form = $(this);
        var phone = false;
        var yalabel = $(this).data('id');
        form.find('input.required').each(function(ind, el) {
            if ($(el).val() === '') {
                if (!phone){
                    setError($(el), 'empty');
                    send = false;
                }
            }
            else if ($(el).data('type') && $(el).val() == validateSettings.emtyMessages[$(el).data('type')]) {
                setError($(el), 'empty');
                send = false;
            }
            else if (!checkRegexp($(el), $(el).data('type'))) {
                setError($(el), 'invalid');
                send = false;
            }
            else{
                if ($(el).data('type') == 'phone' ){
                    phone = true;
                    send = true;
                    return false;
                }
            }
        });
        console.log('send:' + send + '; phone:' + phone);
        if (send) {
            if(form.find('input[type=file]').length > 0 && form.find('input[type=file]').val() != ''){
                $(this).unbind('submit').submit();
                return;
            }
            formSubmit(form);
            console.log(yalabel);
            yaCounter25804316.reachGoal(yalabel);
            ga('send', 'event', 'category', yalabel);
        }
    });
});

function setError(input, errorType) {
    if (errorType == 'empty') {
        input.val(validateSettings.emtyMessages[(input.data('type') != '') ? input.data('type') : 'unknown']).addClass('error').on('focus', function() {
            $(this).val('').removeClass('error').off('focus');
        });
    }
    else {
        input.val(validateSettings.invalidMessages[input.data('type')]).addClass('error').bind('focus', function() {
            $(this).val('').removeClass('error').off('focus');
        });
    }
}

function checkRegexp(o, type) {
    if (type == undefined) {
        return "Некорректно введены данные!";
    }
    var regexp = validateSettings.pregs[type];
    if (!(regexp.test(o.val()))) {
        return false;
    } else {
        return true;
    }
}

function formSubmit(form) {
    var action = '/assets/template/php/submit.php'; //form.attr('action');
    var sendData = form.serialize();
    //console.log(sendData);
    startLoadingAnimation();
    setTimeout(function() {
        $.post(action, sendData, function(data, textStatus) {
            if (textStatus != 'success') {
                alert(textStatus);
            }
            else {
                form[0].reset();
                stopLoadingAnimation();
                //$.fancybox.close();
                //data = $.parseJSON(data);
                //if(!data.success) alert(data.message);
                //else{
                    console.log(form.attr('data-success'));
                    if(form.attr('data-success') && $(form.attr('data-success')).length > 0){
                        var local_success_message = $(form.attr('data-success')).html();
                    }
                    else
                        var local_success_message =  success_message;
                    $('#success').html(local_success_message);
                    $.fancybox('#success', {
                        scrolling: 'no',
                        //openSpeed: fadeSpeed,
                        minHeight: '5',
                        afterLoad: function() {
                            setTimeout(function() {
                               // $.fancybox.close();
                            }, 5000);
                        },
                        padding: 3,
                        locked: false
                            
                        
                    });
                //}
                return true;
            }
        });
    }, fadeSpeed * 2);
}


function startLoadingAnimation() {
    $.fancybox.close();
    $.fancybox('#loading', {
        scrolling: 'no',
        openSpeed: fadeSpeed,
        minHeight: '5',
        afterLoad: function() {
            $('#loading').find('#load').animate({width: '100%'}, 1000, function() {
                $('#loading').find('#load').animate({width: '0%'}, 1000)
            });
            animation = setInterval(function() {
                $('#loading').find('#load').animate({width: '100%'}, 1000, function() {
                    $('#loading').find('#load').animate({width: '0%'}, 1000)
                });
            }, 2000);
        },
        padding: 0,
        modal: true,
        locked: false
    });
}
function stopLoadingAnimation() {
    clearInterval(animation);
} 