$(function checkCookie() { //Проверка наличия Cookie.
	var username = document.cookie;

	if (username != "") { //Если куки есть появляется соответствуящая запись.
		$('.Questionnaire').hide('slow', function(){
			$('.info').html("Вы уже ответили на вопрос, пожалуйста покиньте страницу.</br>"+
			"Вот вам ссылочка на "+
			'<a href="https://yandex.ru/" class="exit">Яндекс</a>');
		});
	} else { //Если куки отсутствует отображается опросник.
		$(function(){ //Функция проверки checkbox "ЖИВОТНЫЕ ОТСУТСТВУЮТ".
			$('#noanimals').click(function(){
				if ($(this).is(':checked')){ // checkbox "ЖИВОТНЫЕ ОТСУТСТВУЮТ" флажок УСТАНОВЛЕН.
					$('#animals1').attr('disabled', 'disabled').not(this).prop('checked', false);
					$('#animals2').attr('disabled', 'disabled').not(this).prop('checked', false);
					$('#animals3').attr('disabled', 'disabled').not(this).prop('checked', false);
					$('#animals4').attr('disabled', 'disabled').not(this).prop('checked', false);
					$('#animals5').attr('disabled', 'disabled').not(this).prop('checked', false);
				} else { // checkbox "ЖИВОТНЫЕ ОТСУТСТВУЮТ" флажок ОТСУТСТВУЕТ.
					$('#animals1').removeAttr('disabled');
					$('#animals2').removeAttr('disabled');
					$('#animals3').removeAttr('disabled');
					$('#animals4').removeAttr('disabled');
					$('#animals5').removeAttr('disabled');
				}
			});
		});
		$(function(){ //Функция подсчета с выбранными ответами.
			var s = document.forms.Sum,
			d = s.querySelectorAll('input[type="checkbox"]:not([value]), input[type="checkbox"][value=""]');
	
			for (var i = 0; i < d.length; i++)
			d[i].disabled = true;
			s.onchange = function() {
				var n = s.querySelectorAll('[type="checkbox"]'),
				itog = 0;

				for(var j=0; j<n.length; j++)
				n[j].checked ? itog += parseFloat(n[j].value) : itog;
				$('#submit').click(function(){ //После нажатия кнопки начинается магия.
					$.ajax({ //Результат отправляется на сервер.
						url:"elems/insert.php", 
						method:"POST",
						data:{itog:itog},
						success:function(data){
							$('#result').html(data);
						}
					});
					$('.Questionnaire').hide('slow', function(){ //Отображаеься сообщение о том, что пользователь уже проголосовал.
						$('.info').html("Благодорим за ваш ответ.</br>"+
						"А теперь уйдите отсюда, пожалуйста.</br>"+
						"Вот вам ссылочка на "+
						'<a href="https://yandex.ru/" class="exit">Яндекс</a>');
					});
					document.cookie = "username=nZQlrhD5Xif8nStq0J1AzVTXbaJmiX3SzmG5wt8A42qDvO0Sxj; path=/"; //записывается Cookie, воизбежания повторного голосования после перезагрузки страницы.
				});
			}
		});
	}
});