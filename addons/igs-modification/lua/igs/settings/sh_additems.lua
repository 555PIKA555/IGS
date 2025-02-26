--[[-------------------------------------------------------------------------
	Обязательные методы:
		:SetPrice()
		:SetDescription()

	Популярные:
		:SetTerm()            --> Срок действия в днях (по умолчанию 0, т.е. одноразовая активация)
		:SetStackable()       --> Разрешает покупать несколько одинаковых предметов
		:SetCategory()        --> Группирует предметы
		:SetIcon()            --> Картинка или модель в качестве иконки
		:SetHighlightColor()  --> Цвет заголовка
		:SetDiscountedFrom()  --> Скидка
		:SetOnActivate()      --> Свое действие при активации
		:SetHidden()          --> Скрытый предмет

	Полезное:
		gm-donate.ru/docs     -->  Подробнее о методах и все остальные
		gm-donate.ru/support  -->  Быстрая помощь и настройка от нас
		gm-donate.ru/mods     -->  Бесплатные модули
---------------------------------------------------------------------------]]

-- Ниже пример с объяснением

/************************************************************
	Разрешаем покупать отмычку а F4 только донатерам (DarkRP)
	https://img.qweqwe.ovh/1493244432112.png -- частичное объяснение
************************************************************/

-- IGS("Отмычка", "otmichka") -- второй параметр не должен(!) повторяться с другими предметами
-- 	:SetPrice(1) -- 1 рубль

-- 	-- 0 - одноразовое (Т.е. купил, выполнилось OnActivate и забыл. Полезно для валюты)
-- 	-- 30 - месяц, 7 - неделя и т.д. :SetPerma() - навсегда
-- 	:SetTerm(30)

-- 	:SetDarkRPItem("lockpick") -- реальный класс энтити
-- 	:SetDescription("Разрешает вам покупать отмычку") -- описание
-- 	:SetCategory("Оружие") -- категория

-- 	-- квадратная ИКОНКА (Не обязательно). Отобразится на главной странице. Может быть с прозрачностью
-- 	:SetIcon("http://i.imgur.com/4zfVs9s.png")

-- 	-- БАННЕР 1000х400 (Не обязательно). Отобразится в подробностях итема
-- 	:SetImage("http://i.imgur.com/RqsP5nP.png")


/************************************************************
	Доступ к энтити, оружию и машинам через спавнменю
************************************************************/
IGS("Admin навсегда", "adm_navs")
	:SetPrice(200) 
	:SetTerm() -- навсегда
	:SetCategory("Привилегии") 
	:SetFAdminGroupWeight("Admin", 15)



-- Дальше примеры, которые нужно раскомментировать, чтобы работали (убрать "--" в начале)

/************************************************************
	Игровая валюта для DarkRP
	Здесь SetTerm не обязателен, т.к. срок ни на что не влияет
	Обратите внимание, цена указана третьим параметром. Так тоже можно
************************************************************/
-- IGS("100 тысяч", "100k_deneg", 200):SetDarkRPMoney(100000)
-- IGS("500 тысяч", "500k_deneg", 450):SetDarkRPMoney(500000)



/************************************************************
	Доступ к DarkRP профессиям
************************************************************/
-- IGS("Бомж", "team_hobo")
-- 	:SetDarkRPTeams("hobo") -- одна тима (command)
-- 	:SetCategory("Доступ к работам")
-- 	:SetDescription("Вы сможете месяц работать бомжом :)")
-- 	:SetPrice(50)
-- 	:SetTerm(30)

-- IGS("Продвинутые воры", "team_thieves")
-- 	:SetDarkRPTeams("advthief", "ultrathief") -- можно несколько
-- 	:SetCategory("Доступ к работам")
-- 	:SetDescription("Вам станут доступны работы продвинутого и ультравора")
-- 	:SetPrice(200)
-- 	:SetTerm(30)



/************************************************************
	Донат группы ULX
************************************************************/
-- IGS("VIP на месяц", "vip_na_mesyac"):SetULXGroup("vip")
-- 	:SetPrice(150)
-- 	:SetTerm(30) -- 30 дней
-- 	:SetCategory("Группы")
-- 	:SetDescription("С этой покупкой вы станете офигенными, потому что в ней воооот такая куча крутых возможностей")

-- IGS("PREMIUM навсегда", "premium_navsegda"):SetULXGroup("premium")
-- 	:SetPrice(400)
-- 	:SetPerma() -- навсегда
-- 	:SetCategory("Группы")
-- 	:SetDescription("А с этой покупкой еще офигеннее, чем с покупкой VIP")

-- IGS("Тестовая операторка", "demo_operator"):SetULXGroup("operator")
-- 	:SetPrice(30)
-- 	:SetTerm(0) -- одноразовое
-- 	:SetCategory("Группы")
-- 	:SetDescription("С этой покупкой вы можете попробовать себя в роли оператора. Права исчезнут после перезахода")



/************************************************************
	Продажа поинтов для Поинтшоп 2
	https://www.gmodstore.com/scripts/view/596
************************************************************/
-- IGS("100 донат поинтов","100_points_don", 200):SetPremiumPoints(200) -- дон поинты
-- IGS("1000 обычных поинтов","1000_points", 100):SetPoints(1000) -- обычные поинты



/************************************************************
	Продажа уровней и опыта для Leveling System
	https://github.com/vrondakis/Leveling-System
************************************************************/
-- IGS("5 уровней", "lvl_5", 25):SetLevels(5)
-- IGS("100 опыта", "exp_100", 20):SetEXP(100)

