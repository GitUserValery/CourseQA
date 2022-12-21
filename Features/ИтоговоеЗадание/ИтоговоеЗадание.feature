#language: ru

@tree

Функционал: Итоговое задание

Как Ученик я хочу
завершить прохождение курса
чтобы получить сертификат 

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка поля с картинкой

* создаем элемент справочника номенклатура и элемент справочника файлы
	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa17' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000017' | 'Bosch1234'    | 'Ч-0001'  | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | ''             | 'Enum.ВидыТоваров.Товар' | ''         |          |
	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | 'ИмяФайла'         | 'Подпись'                                                   | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=840318cc18e98f9411ed80f71f225748' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa17' | '000000018' | 'тест'         | 'ValueStorage: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' | 'itempicture1.png' | 'ValueStorage:AgFTS2/0iI3BTqDV67a9oKcN42CAgPe791crhSrVAgA=' | 'False'    | 'False'      | 'False'       |
	
* проверяем прикрепление картинки
	И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9744d21cfa17"
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000018' | 'тест'         |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Bosch1234 (Товар) *'
	И я нажимаю на кнопку с именем 'ОбновитьКартинку'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Bosch1234 (Товар) *' в течение 20 секунд
	И я закрываю все окна клиентского приложения
	
			
Сценарий: тестирование нового отчета
* открываем отчет
	И Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
* выбираем настройку
	Тогда открылось окно 'Остатки товаров'
	И в табличном документе 'Результат' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |
	И в таблице "СписокНастроек" я выбираю текущую строку
* формируем отчет
	Тогда открылось окно 'Остатки товаров'
	И Пауза 20
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	
	//и надо бы проверить отсутствие ошибки, но я не нашла как
	И я закрываю все окна клиентского приложения

Сценарий: Проверка документа Продажи
// используется демо база, поэтому загрузка данных не требуется
* Создаем документ продажи
	И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
* заполняем поля шапки и проверяем заполнение связанных полей
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю по строке 'Магазин "Бытовая техника"'
	Тогда поле с именем "ВидЦен" заполнено
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* заполняем табличную часть
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'VekoNT02'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 000,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
* проверяем итоговые сумму и количество 
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '1 000'
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '1'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
	И я запоминаю значение поля "Номер" как "$Номер$"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Тогда таблица "Список" содержит строки:
		| 'Номер'   |
		| '$Номер$' |
* выводим печатную форму
	И в таблице "Список" я перехожу к строке:
		| 'Номер'     |
		| '$Номер$' |
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
* проверяем и закрываем печатную форму	
	Тогда табличный документ "SpreadsheetDocument" равен:
		| 'Расход товара' | ''                                  | ''           | ''      |
		| ''              | ''                                  | ''           | ''      |
		| 'Номер'         | '$Номер$'                           | ''           | ''      |
		| 'Дата'          | '*'                                 | ''           | ''      |
		| 'Покупатель'    | 'Магазин "Бытовая техника"'         | ''           | ''      |
		| 'Склад'         | 'Склад отдела продаж'               | ''           | ''      |
		| 'Сумма'         | '1 000 рублей (Одна тысяча рублей)' | ''           | ''      |
		| 'Вес'           | ''                                  | ''           | ''      |
		| ''              | ''                                  | ''           | ''      |
		| 'Товар'         | 'Цена'                              | 'Количество' | 'Сумма' |
		| 'VekoNT02'      | '1 000'                             | '1'          | '1 000' |
	
	И я закрываю текущее окно
* проверяем движения
	И в таблице "Список" я перехожу к строке:
		| 'Номер'     |
		| '$Номер$' |

	И в таблице "Список" я выбираю текущую строку
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	Тогда таблица "Список" стала равной:
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Контрагент'                | 'Сумма'    | 'Валюта' |
		| '*'      | '*'           | '1'            | 'Магазин "Бытовая техника"' | '1 000,00' | ''       |
	
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	Тогда таблица "Список" стала равной:
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Покупатель'                | 'Сумма'    | 'Товар'    | 'Количество' |
		| '*'      | '*'           | '1'            | 'Магазин "Бытовая техника"' | '1 000,00' | 'VekoNT02' | '1,00'       |
	
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	Тогда таблица "Список" стала равной:
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Склад'               | 'Товар'    | 'Количество' |
		| '*'      | '*'           | '1'            | 'Склад отдела продаж' | 'VekoNT02' | '1,00'       |

	И я закрываю все окна клиентского приложения
								