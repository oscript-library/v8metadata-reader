#использовать "../src"
#Использовать asserts

Функция ПолучитьСписокТестов(Знач Тестирование) Экспорт
	
	юТест = Тестирование;
	
	ИменаТестов = Новый Массив;
	
	ИменаТестов.Добавить("ТестДолжен_ПроверитьОбъекты");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьМодули");
	
	Возврат ИменаТестов;
	
КонецФункции

Процедура ТестДолжен_ПроверитьОбъекты() Экспорт
	
	каталог = ИсходникиСНесколькимиПоддержками();

	генераторПутей = Новый Путь1СПоМетаданным(каталог);
	
	ФайлыСовпадают(
		генераторПутей.Путь("ПараметрСеанса.ПараметрСеанса1"),
		каталог + "\SessionParameters\ПараметрСеанса1.xml");

КонецПроцедуры

Процедура ТестДолжен_ПроверитьМодули() Экспорт
	
	генераторПутей = Новый Путь1СПоМетаданным(ИсходникиСНесколькимиПоддержками());
	
КонецПроцедуры

Функция ИсходникиСНесколькимиПоддержками()
	
	Возврат "./tests/src_base";
	
КонецФункции

Процедура ФайлыСовпадают(Знач ПолученныйПуть, Знач ОжидаемыйПуть)

	Сообщить("ПолученныйПуть: " + ПолученныйПуть);
	Сообщить("ОжидаемыйПуть: " + ОжидаемыйПуть);

	очищенныйПолученныйПуть = СтрЗаменить(ПолученныйПуть, "/", "\");
	очищенныйОжидаемыйПуть = СтрЗаменить(ОжидаемыйПуть, "/", "\");

	Утверждения.ПроверитьРавенство(
		очищенныйПолученныйПуть,
		очищенныйОжидаемыйПуть,
		"Пути к файлам должны совпадать.");
	
КонецПроцедуры

Лог = Логирование.ПолучитьЛог("oscript.app.cf_info");
Лог.УстановитьУровень(УровниЛога.Отладка);