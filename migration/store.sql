-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 18 2020 г., 11:38
-- Версия сервера: 5.6.37
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `short_text` mediumtext NOT NULL,
  `long_text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `img` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `author`, `short_text`, `long_text`, `date`, `status`, `img`) VALUES
(1, 'Радуга на небе', 'ДАША ШОТОПМА', 'S T Если вы когда-то смотрели безумно увлекательные лекции по физике, то имя Уолтер Левин вам скажет о многом. Если нет — немного вам завидуем: вас ожидает путешествие в страну науки. Газета New York Times назвала профессора Уолтера Левина веб-звездой. Ежедневно профессор влюбляет в физику тысячи людей, а в числе его поклонников сам Билл Гейтс. Сегодня в рубрике «Интеллектуальный час» — долгожданная книга Уолтера Левина «Мир глазами физика».\r\n\r\nПрофессор считает то, что большинство современных учителей физики игнорируют такое потрясающее явление, как радуга, на своих уроках, преступлением перед учениками. «Как много маленьких чудес повседневной жизни (красивых и впечатляющих) проходят мимо нас незамеченными просто потому, что никто не научил нас их видеть. Я люблю читать лекции о радугах и неизменно перед ними говорю студентам: „К концу этой лекции ваша жизнь уже никогда не будет прежней“. Это относится и к вам», — пишет Уолтер. Готовы? Тогда в путь.ф', 'L T Если вы когда-то смотрели безумно увлекательные лекции по физике, то имя Уолтер Левин вам скажет о многом. Если нет — немного вам завидуем: вас ожидает путешествие в страну науки. Газета New York Times назвала профессора Уолтера Левина веб-звездой. Ежедневно профессор влюбляет в физику тысячи людей, а в числе его поклонников сам Билл Гейтс.', '2020-05-04 14:14:07', 1, 'https://media.bizj.us/view/img/7084562/joe-dash*1200xx2600-1463-0-135.jpg'),
(2, 'ПУТИН ЄТО КТО*?*', 'Леонид Ті', 'Рост Путина составляет 170 см, что, по опубликованному в швейцарском издании Le Temps мнению журналиста Эммануэля Гриншпана, в период пребывания на президентском посту создавало определённые проблемы при фотографировании его рядом с другими политическими деятелями.', 'Влади́мир Влади́мирович Пу́тин (род. 7 октября 1952, Ленинград, СССР) — российский государственный и политический деятель, действующий президент Российской Федерации и верховный главнокомандующий Вооружёнными силами Российской Федерации с 7 мая 2012[7].\r\n\r\nРанее занимал должность президента с 31 декабря 1999 по 7 мая 2008[8][9], в 1999—2000 и 2008—2012 годах занимал должность председателя правительства Российской Федерации.\r\n\r\nВыпускник юридического факультета Ленинградского государственного университета. С 1977 года работал по линии контрразведки в следственном отделе Ленинградского управления КГБ[10]. С 1985 по 1990 год служил в резидентуре советской внешней разведки в ГДР, работал в Дрездене под прикрытием в должности директора дрезденского Дома дружбы СССР—ГДР. По возвращении в Ленинград работал помощником ректора ЛГУ по международным вопросам, затем советником председателя Ленинградского горсовета Анатолия Собчака. 20 августа 1991 года в звании подполковника уволился из КГБ СССР.\r\n\r\nВ 1991—1996 продолжал работу под началом Собчака, перейдя в мэрию Санкт-Петербурга: возглавлял Комитет по внешним связям, был советником мэра, затем первым заместителем. С августа 1996 года начал работать в Москве в должности заместителя управляющего делами президента Российской Федерации. После недолгого пребывания во главе ФСБ РФ и на посту секретаря Совета Безопасности Российской Федерации в августе 1999 года был назначен председателем правительства Российской Федерации.', '2020-05-11 19:53:40', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Vladimir_Putin_%282020-02-20%29.jpg/240px-Vladimir_Putin_%282020-02-20%29.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `date`, `status`, `product_id`) VALUES
(79, 'Daniel ', 'COMPOSer', '2020-05-07 13:59:19', 0, 2),
(80, 'GEORG', 'I really need to buy it', '2020-05-07 14:00:34', 0, 3),
(81, '123', '123', '2020-05-07 14:06:04', 0, 1),
(82, '123', '123', '2020-05-07 14:06:08', 0, 1),
(83, '123', '123', '2020-05-07 14:09:16', 0, 1),
(84, '123', '123', '2020-05-07 14:09:19', 0, 1),
(85, '123', '123', '2020-05-07 14:09:22', 0, 1),
(86, '123', '123', '2020-05-07 14:13:20', 0, 1),
(87, 'qwe', 'qwe', '2020-05-07 14:13:22', 0, 1),
(88, '123', '123', '2020-05-07 14:13:46', 0, 2),
(89, '123', '123', '2020-05-07 14:13:48', 0, 2),
(90, '123', '123', '2020-05-07 14:13:50', 0, 2),
(91, '321', '321', '2020-05-07 14:15:33', 0, 2),
(92, 'DASDLK:ASKD:L ASDLKA L:SK ASD', ' SDA KDKL: CK  :LWK :SLDAKAS :DLK :L@K:L EKQW:LKD:SALK :LSAK D:LCK:ALK:LW KD:LK AW:DLK W:LDK :AWLDK :LAWKD :ALK: DKC:LXKC YUI@HDUHDSAU  asd asd', '2020-05-07 17:28:30', 0, 2),
(93, '123123123', '123123123123123', '2020-05-07 17:50:34', 0, 3),
(94, 'dddd', 'dasdasdasd', '2020-05-11 16:13:16', 0, 1),
(95, 'dddd', 'dasdasdasd', '2020-05-11 16:14:10', 0, 1),
(96, '123123123', '123123123123da sdas das d', '2020-05-11 16:14:16', 0, 1),
(97, 'M boney', 'DELET IT &#13;&#10;', '2020-05-11 19:34:13', 0, 3),
(98, 'weqwe', 'qweqwe', '2020-05-11 19:40:25', 0, 3),
(99, 'weqwe', 'qweqwe', '2020-05-11 19:40:28', 0, 3),
(100, '123', '12323123123123', '2020-05-13 08:11:51', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` text NOT NULL,
  `text` longtext NOT NULL,
  `short_text` mediumtext NOT NULL,
  `img` mediumtext NOT NULL,
  `file` text NOT NULL,
  `price` varchar(32) NOT NULL,
  `category` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `title`, `text`, `short_text`, `img`, `file`, `price`, `category`, `status`, `date`) VALUES
(1, 'Paranoid1 ', 'Второй студийный альбом британской рок-группы Black Sabbath.', 'После выпуска дебютного альбома Black Sabbath вернулись в студию в июне 1970 года для записи следующего альбома. Рабочее название выпускаемого диска было War Pigs (Военные свиньи), однако от него пришлось отказаться, так как компания звукозаписи опасалась негативной реакции в США, которые вели войну во Вьетнаме. Тем не менее антивоенная направленность сохранилась в оформлении альбома: её символизировал искажённый фотографический образ выскочившего из-за дерева бородатого человека со щитом и мечом в руках[7].\r\n\r\nЗаглавная композиция была написана прямо в студии за 25 минут.\r\n\r\n«	У нас просто было недостаточно материала для нового альбома. Тогда Тони просто стал играть Paranoid на гитаре. Нам понадобилось от 20 до 25 минут, чтоб записать его.\r\nБилл Уорд[8]	»\r\nКомпозиция «Paranoid» стала хитом в Британии (4-е место)[5]. В США компания Vertigo Records выпустила два сингла: «Paranoid» (#61) и «Iron Man» (#52). В видеоклипах к ним были использованы съёмки выступления группы в Beat Club[7].\r\n\r\nПри оформлении альбома впервые была использована фотография музыкантов. Она расположена на развороте пластинки.\r\n\r\nАльбом разошёлся только в США 4-миллионным тиражом[9], хоть и практически не звучал в то время на радио. В Британии альбом стал золотым[10].', 'Композиция «Paranoid» стала хитом в Британии (4-е место)[5]. В США компания Vertigo Records выпустила два сингла: «Paranoid» (#61) и «Iron Man» (#52). В видеоклипах к ним были использованы съёмки выступления группы в Beat Club[7].', 'https://upload.wikimedia.org/wikipedia/ru/2/2b/Black_Sabbath_Paranoid.jpg', '0', '1667 грн.', 'Music', 1, '2020-05-02 12:52:12'),
(2, 'AC/DC', 'Дискография австралийской рок-группы AC/DC', 'Дискография австралийской рок-группы AC/DC включает в себя 19 студийных альбомов, 6 концертных альбомов, 1 мини-альбом, 14 видеоальбомов и 2 сборника. За время работы группа выпустила 48 синглов, на песни группы было снято 57 видеоклипов. Альбом Who Made Who был выпущен как саундтрек к фильму «Максимальное ускорение», а альбом AC/DC: Iron Man 2 — как саундтрек к фильму «Железный человек 2».\r\n\r\nГруппа AC/DC (от англ. alternating current/direct current — переменный/постоянный ток) была основана в 1973 году, в Сиднее, братьями Ангусом (соло-гитара) и Малколмом (ритм-гитара) Янгами. В начале своего существования группа сменила несколько составов, пока в 1975 году не установился постоянный состав, куда, помимо основателей группы, входили Фил Радд (ударные), Марк Эванс (бас-гитара) и Бон Скотт (вокал). В этом же году был издан первый студийный альбом группы High Voltage. В следующем году группа выпустила свой первый международный альбом, который имел аналогичное название, но значительно отличался по содержанию. В 1977 Марк Эванс покинул группу и был заменён Клиффом Уильямсом. В 1979 году группа издаёт альбом Highway to Hell, который стал самым популярным альбомом группы на момент выхода, и достиг 7-кратного платинового статуса в США. 19 февраля 1980 года погиб вокалист и автор песен группы Бон Скотт. Группа оказалась на грани распада, но было принято решение продолжить деятельность с новым вокалистом. После прослушиваний им стал Брайан Джонсон, бывший участник группы Geordie. С ним группа записала свой самый успешный альбом Back in Black. Состав группы оставался неизменным, пока в 1983 году коллектив не покинул Фил Радд. На замену ему пришёл Саймон Райт, однако он ушёл из группы в 1989 году, после записи альбома Blow Up Your Video и был заменён Крисом Слейдом. С ним группа издала всего один студийный альбом, The Razor\'s Edge, который получил довольно крупный коммерческий успех, а также сингл «Big Gun», который был записан специально для фильма Последний киногерой и не вошёл ни в один из студийных альбомов группы. В 1995 году в коллектив вернулся Фил Радд. Последний, на данный момент, студийный альбом группы, Rock or Bust, был выпущен в 2014 году.', 'Группа AC/DC (от англ. alternating current/direct current — переменный/постоянный ток) была основана в 1973 году, в Сиднее, братьями Ангусом (соло-гитара) и Малколмом (ритм-гитара) Янгами', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ACDC_In_Tacoma_2009.jpg/274px-ACDC_In_Tacoma_2009.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ACDC_In_Tacoma_2009.jpg/274px-ACDC_In_Tacoma_2009.jpg', '999 грн', 'music', 1, '2020-05-04 10:12:01'),
(3, 'Boney M', 'Диско-группа, созданная в 1975 году', 'Западногерманский продюсер Франк Фариан, экспериментируя с новым стилем диско, записывает в конце 1974 года необычную композицию Baby Do You Wanna Bump?, основанную на ямайской мелодии «Al Capone», автором и первым исполнителем которой был Prince Buster (настоящее имя Cecil Bustamente Campbell) ещё в первой половине 1960-х. В феврале 1975 года Фариан публикует свою собственную версию под псевдонимом Boney M., по имени Наполена \"Бони\" Бонапарта — героя популярного тогда австралийского детективного сериала, снятого по книгам писателя Артура Апфилда. Букву «M» продюсер добавил к имени Boney для более эффектного звучания. Впоследствии группа использовала легенду, что «M — означает четыре черты», подразумевая разные характеры и стили участников квартета.\r\n\r\nВ композиции «Baby Do You Wanna Bump?» («Хочешь потолкаться, детка?» или «Малышка, хочешь попихаться?») он использовал исключительно свой голос, записав в многоканальном варианте как мужскую, так и «женские» вокальные партии на студии Europa Sound Studios в Оффенбахе[1]. Но неожиданный успех и поступившие приглашения для концертных и телевизионных выступлений заставили его с помощью кастинг-агента Кати Вольф набрать карибскую группу, в состав которой вошли Мэйзи Уильямс, Шейла, Натали и танцор Майк. Однако это был временный вариант. После двух замен, к 1976 году, сформировался окончательный состав группы, когда в него вошли эмигранты с Карибских островов: ямайские вокалистки Лиз Митчел и Марсия Барретт, модель и танцовщица с острова Монтсеррат Мэйзи Уильямс, а также DJ и танцор Бобби Фаррелл с острова Аруба. Все участники квартета перебрались в Западную Европу ещё в подростковом возрасте. Там же они получили образование.', 'Западногерманский продюсер Франк Фариан, экспериментируя с новым стилем диско, записывает в конце 1974 года необычную композицию Baby Do You Wanna Bump?, основанную на ямайской мелодии «Al Capone», автором и первым исполнителем которой был Prince Buster (настоящее имя Cecil Bustamente Campbell) ещё в первой половине 1960-х. В феврале 1975 года Фариан публикует свою собственную версию под псевдонимом Boney M', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Boney_M_1981.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Boney_M_1981.jpg', '2056грн', 'music', 1, '2020-05-04 13:41:10'),
(4, 'DJ-КОНТРОЛЛЕР PIONEER DDJ-400', 'ПОЧЕМУ, ПОКУПАЯ У НАС, ВЫ ВСЕГДА В ПЛЮСЕ', '  Pioneer DDJ-400 – это идеальное устройство для того, чтобы просто и быстро обучиться диджеингу. Набор функций и расположение элементов управления этого 2-канального контроллера поможет вам стремительно развивать свои навыки. Кнопки cue, управление лупами и эффектами Beat FX размещены так же, как на флагманских проигрывателях серии NXS2, так что после работы с DDJ-400 вы без проблем сможете играть и на топовом оборудовании от Pioneer.\r\n\r\n  Обучайтесь с помощью опции Tutorial, которая идет в комплекте с программным обеспечением rekordbox dj 5. Эта функция поможет вам в полной мере раскрыть потенциал этого контроллера. Легкость и портативность DDJ-400 позволяет брать его с собой в студию, на выездную вечеринку, или в любое другое место. ', '  Pioneer DDJ-400 – это идеальное устройство для того, чтобы просто и быстро обучиться диджеингу. Набор функций и расположение элементов управления этого 2-канального контроллера поможет вам стремительно развивать свои навыки. Кнопки cue, управление лупами и эффектами Beat FX размещены так же, как на флагманских проигрывателях серии NXS2, так что после работы с DDJ-400 вы без проблем сможете играть и на топовом оборудовании от Pioneer.\r\n\r\n ', 'https://www.prodj.com.ua/img/1000-1/2018/06/20180626111946.jpg', 'https://www.prodj.com.ua/img/1000-1/2018/06/20180626111946.jpg', '10000 грн', 'mixer', 1, '2020-05-13 08:11:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
