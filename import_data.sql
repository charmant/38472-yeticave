INSERT INTO category (name) VALUES
  ('Доски и лыжи'),
  ('Крепления'),
  ('Ботинки'),
  ('Одежда'),
  ('Инструменты'),
  ('Разное');

INSERT INTO user (date_add, email, password, name, avatar, contact) VALUES
  (NOW(), 'ignat.v@gmail.com', '$2y$10$OqvsKHQwr0Wk6FMZDoHo1uHoXd4UdxJG/5UDtUiie00XaxMHrW8ka', 'Игнат', '/img/upload/avatar.jpg', 'ignat.v@gmail.com'),
  (NOW(), 'kitty_93@li.ru', '$2y$10$bWtSjUhwgggtxrnJ7rxmIe63ABubHQs0AS0hgnOo41IEdMHkYoSVa', 'Леночка', '', '+7(900)000-21-34'),
  (NOW(), 'warrior07@mail.ru', '$2y$10$2OxpEH7narYpkOT1H5cApezuzh10tZEEQ2axgFOaKW.55LxIJBgWW', 'Руслан', '/img/upload/user.jpg', 'Зеленоград, Старое Крюково');

INSERT INTO lot (category_id, user_id, winner_id, date_add, date_close, title, description, image, initial_rate, rate_step, fav_count) VALUES
  (1, 3, NULL, '2017-05-09 15:07:00', '2017-07-01 00:00:00', '2014 Rossignol District Snowboard', 'Легкий маневренный сноуборд, готовый дать жару в любом парке, растопив снег мощным щелчком и четкими дугами. Стекловолокно Bi-Ax, уложенное в двух направлениях, наделяет этот снаряд отличной гибкостью и отзывчивостью, а симметричная геометрия в сочетании с классическим прогибом кэмбер позволит уверенно держать высокие скорости. А если к концу катального дня сил совсем не останется, просто посмотрите на Вашу доску и улыбнитесь, крутая графика от Шона Кливера еще никого не оставляла равнодушным.', 'img/upload/lot-1.jpg', 10999, 200, 5),
  (1, 1, NULL, '2017-05-12 10:00:00', '2017-06-27 00:00:00', 'DC Ply Mens 2016/2017 Snowboard', 'Этот, ставший уже легендарным, сноуборд наверняка разменяет еще не один десяток лет. Традиционный погиб в сочетании с направленной геометрией делает доску точной и маневренной. Карбоновые нити, уложенные под углом в 45 градусов, определяют торсионную жесткость доски, которая делает ее упругой и отзывчивой, а расширенные канты в области креплений делают доску более стабильной на жестком рельефе, позволяя развивать большие скорости.', 'img/upload/lot-2.jpg', 159999, 2000, 0),
  (2, 2, NULL, '2017-05-12 14:10:07', '2017-05-30 00:00:00', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Эргономичный хайбэк, амортизирующие вставки и, безусловно, лучшие стрепы и бакли в индустрии.', 'img/upload/lot-3.jpg', 8000, 100, 0),
  (3, 2, NULL, '2017-05-13 09:04:10', '2017-07-10 00:00:00', 'Ботинки для сноуборда DC Mutiny Charocal', 'Вы можете распаковать их из коробки даже у подъемника, ощущения будут такие, что вы катаетесь в них уже много лет. Надежный и теплый внутренник, теплоотражающая фольга - в них Вы сможете пережить даже самую низкую температуру, будь то парк или бэккантри.', 'img/upload/lot-4.jpg', 10999, 400, 8),
  (4, 1, NULL, '2017-05-14 12:30:27', '2017-08-15 00:00:00', 'Куртка для сноуборда DC Mutiny Charocal', 'Водонепроницаемая мембранная ткань и качественный синтетический утеплитель позволят выходить на склон в холодную погоду, а в случае потепления вентиляционные отверстия с готовностью помогут оптимизировать температуру под личные предпочтения.', 'img/upload/lot-5.jpg', 7500, 200, 3),
  (5, 3, NULL, NOW(), '2017-07-20 00:00:00', 'Маска Oakley Canopy', 'Инженеров Oakley вдохновили забрала шлемов лётчиков-истребителей. В результате, эта маска получила непревзойдённый угол обзора, широкий ремень с силиконовыми нитями для надёжной фиксации и механизм быстрой смены линз. Дополнительный бонус: маска совместима с большинством моделей шлемов для катания.', 'img/upload/lot-6.jpg', 5400, 50, 15);

INSERT INTO bet (lot_id, user_id, date_add, rate) VALUES
  (1, 3, '2017-05-05 11:17:09', 11500),
  (1, 1, '2017-05-08 00:21:00', 10500),
  (1, 1, '2017-05-10 19:05:00', 11000),
  (1, 2, NOW(), 10000);
