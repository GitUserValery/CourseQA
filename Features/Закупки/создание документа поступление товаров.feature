﻿#language: ru

@tree

Функционал: создание документа поступление товаров

Как Менеджер по закупкам я хочу
создание документа поступление товаров
чтобы поставить товар на учет 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание документа поступление товаров
// создание
* Открытие докумета
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
Тогда элемент формы с именем "Склад" стал равен 'Склад отдела продаж'
И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'Магазин "Бытовая техника"'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Колбаса'
И я перехожу к следующему реквизиту
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1,00'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
И я перехожу к следующему реквизиту
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,00'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения ТЧ
	Тогда таблица "Товары" стала равной:
		| 'Товар'   | 'Цена'   | 'Артикул' | 'Количество' | 'Сумма'  |
		| '*' | '250,00' | '*'   | '1,00'       | '250,00' |
		| '*'   | '150,00' | '*'     | '5,00'       | '750,00' |
	
	
И я нажимаю на кнопку "Записать"
* Запись номера
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение документа
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
* Проверка создания документа
И таблица "Список" содержит строки:
	| 'Номер' |
	| '$Номер$'   |

Сценарий: проверка наличия элемента Торт
И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
Тогда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаСписок'
И таблица "Список" содержит строки:
	| 'Наименование' |
	| 'Торт'   |
