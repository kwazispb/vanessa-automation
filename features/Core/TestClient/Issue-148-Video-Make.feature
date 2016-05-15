# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds



Функционал: Проверка формирования файла видео

Как разработчик
Я хочу чтобы корректно формировался файл видео под фиче
Чтобы я мог видеть результат работы сценариев в формате видео


Сценарий: Проверка формирования видео
	Когда в поле "КаталогСкриптовСборкиВидео" указан существующий каталог
	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиФормированияВидео"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И     В открытой форме я изменяю флаг "Создавать видеоинструкцию"
	И     в поле "Скрипты создания видеоинструкций" я указываю путь к относительному каталогу "..\vanessa-ci\MakeVideoInstr"
	И     в поле "Каталог оutput инструкция видео" я указываю путь к относительному каталогу "tools\Video" и очищаю каталог
	
	И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
	И В открытой форме я нажимаю на кнопку с заголовком "Добавить"
	И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	
	И В открытой форме я нажимаю на кнопку "Перезагрузить сценарии"
	И Пауза 10
	И В открытой форме я нажимаю на кнопку с заголовком "Выполнить сценарии"
	И Пауза 6
	И в течении 600 секунд в каталоге заданном в переменной контекста "ПараметрКаталог" появился файл "result.mp4"
	И в логе сообщений TestClient нет слова "ошибка"