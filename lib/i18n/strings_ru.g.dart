///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsHomeRu home = _TranslationsHomeRu._(_root);
	@override late final _TranslationsAboutRu about = _TranslationsAboutRu._(_root);
	@override String get actually => 'Сейчас';
	@override String get freelance => 'Фриланс';
	@override String get adaptine_descr => 'Разработка мобильных и веб-приложений';
	@override String get freelance_descr => 'Создание кроссплатформенных приложений для iOS, Android и Web с акцентом на инновации.';
	@override late final _TranslationsProjectsRu projects = _TranslationsProjectsRu._(_root);
	@override String get about_me => 'Меня зовут Макс Буланович, и я Flutter-разработчик. Мой путь в программирование начался совсем не так, как у большинства.\n\nСначала меня программирование вообще не интересовало — я не понимал, как создаются приложения и даже не пытался разобраться. Но мне всегда было любопытно, как устроены вещи: как камера делает снимок, почему едет машина, как звук попадает в наушники.\n\nВсё изменилось 14 сентября 2022 года, когда я случайно наткнулся на видео в TikTok: таймлапс создания приложения на Flutter, и результат мгновенно появлялся на эмуляторе телефона. Этот момент меня поразил. Я не понимал, что именно происходит, но был поражён тем, как код прямо на глазах превращается в визуальный результат.\n\nЯ полез в комментарии, где увидел слова: фреймворк, кроссплатформенность, Dart, Flutter… Всё это было для меня новым. Я начал гуглить, и в тот же день нашёл урок на YouTube, в котором разработчик создавал простое ToDo-приложение на Flutter и Firebase. Я не просто посмотрел — я сразу начал повторять.\n\nВ тот день я учился около 10 часов, и к вечеру уже создавал своё первое приложение. Оно превратилось в Budget Manager — проект, над которым я работал с октября по декабрь 2022 года и затем опубликовал в Google Play.\n\nС самого начала у меня было бесконечно много вопросов, и я каждый день по многу часов учился. Но это не было в тягость — наоборот, это было невероятно увлекательно. Я всегда любил изучать новые технологии и экспериментировать с идеями, и Flutter открыл для меня целый новый мир.\n\nВ мае 2023 года я получил первое предложение по фрилансу. Вместе с коллегой мы сделали реальное рабочее приложение. Тогда я понял: я создаю что-то, чем люди действительно пользуются. Это дало огромную мотивацию. С тех пор не прошло ни дня, чтобы я не работал над каким-то проектом — это мог быть стартап, фриланс-заказ или моя личная идея.\n\nНо я беру не каждый проект. Для меня важно создавать приложения, которые полезны, значимы и сделаны с душой. Поэтому я не работаю над копиями, азартными приложениями, фишингом или чем-то вредным.\n\nЕсли у вас есть идея, которая может сделать жизнь людей проще, лучше или вдохновеннее — давайте поговорим! Буду рад обсудить ваш проект и помочь воплотить его в жизнь.';
}

// Path: home
class _TranslationsHomeRu implements TranslationsHomeEn {
	_TranslationsHomeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get experience => 'Опыт';
	@override String get projects => 'Проекты';
	@override String get skills => 'Знания';
	@override String get blog => 'Блог';
	@override String get change_language => 'Изменить язык';
	@override String get footer_text => 'Создано на Flutter ❤️ \n Макс Буланович | Flutter разработчик';
	@override String get open_linkedin => 'Открыть LinkedIn';
	@override String get open_github => 'Открыть GitHub';
	@override String get message_telegram => 'Написать в Telegram';
	@override String get follow_instagram => 'Подписаться в Instagram';
}

// Path: about
class _TranslationsAboutRu implements TranslationsAboutEn {
	_TranslationsAboutRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Макс Буланович';
	@override String get role => 'Flutter Разработчик';
	@override String get descr_first => 'Flutter Разработчик | Создаю увлекательные и высокопроизводительные мобильные приложения | Стремлюсь учиться, адаптироваться и внедрять инновации';
	@override String get descr_second => 'Помимо разработки приложений, я сотрудничаю с опытными специалистами для создания веб-сайтов, Telegram-ботов и графического дизайна, чтобы воплотить ваши идеи в жизнь. Свяжитесь со мной для создания сайтов, UI/UX дизайна, Telegram-ботов и другого.';
	@override String get about_me => 'Обо мне';
	@override String get get_in_touch => 'Связаться';
	@override String get statistics => 'Статистика';
	@override String get years_experience => '+ лет опыта';
	@override String get hours_coding => '+ часов кодинга';
	@override String get cups => '+ чашек чая';
	@override String get projects => '+ коммерческих проектов';
}

// Path: projects
class _TranslationsProjectsRu implements TranslationsProjectsEn {
	_TranslationsProjectsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsProjectsGrossRadarTmsRu gross_radar_tms = _TranslationsProjectsGrossRadarTmsRu._(_root);
	@override late final _TranslationsProjectsGrossRadarMobileRu gross_radar_mobile = _TranslationsProjectsGrossRadarMobileRu._(_root);
	@override late final _TranslationsProjectsPortfolioRu portfolio = _TranslationsProjectsPortfolioRu._(_root);
	@override late final _TranslationsProjectsMaruRu maru = _TranslationsProjectsMaruRu._(_root);
	@override late final _TranslationsProjectsPapiBurgersRu papi_burgers = _TranslationsProjectsPapiBurgersRu._(_root);
	@override late final _TranslationsProjectsNullendVpnRu nullend_vpn = _TranslationsProjectsNullendVpnRu._(_root);
	@override late final _TranslationsProjectsNullendBrowserRu nullend_browser = _TranslationsProjectsNullendBrowserRu._(_root);
	@override late final _TranslationsProjectsEasyPgpRu easy_pgp = _TranslationsProjectsEasyPgpRu._(_root);
	@override late final _TranslationsProjectsTaxiAppRu taxi_app = _TranslationsProjectsTaxiAppRu._(_root);
	@override late final _TranslationsProjectsHorizonVillageRu horizon_village = _TranslationsProjectsHorizonVillageRu._(_root);
	@override late final _TranslationsProjectsKamiRu kami = _TranslationsProjectsKamiRu._(_root);
	@override late final _TranslationsProjectsBudgetManagerRu budget_manager = _TranslationsProjectsBudgetManagerRu._(_root);
}

// Path: projects.gross_radar_tms
class _TranslationsProjectsGrossRadarTmsRu implements TranslationsProjectsGrossRadarTmsEn {
	_TranslationsProjectsGrossRadarTmsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gross Radar TMS';
	@override String get description => 'Я разработал систему управления транспортом (TMS) с нуля для работы с мобильным приложением GrossRadar, обеспечивая создание и управление грузами для пользователей приложения. Я создал функции для создания организаций, приглашения пользователей из приложения и эффективного управления поездками. Я реализовал инструменты для создания, назначения и отслеживания поездок, а также мониторинга прогресса и истории поездок. Система бесшовно интегрируется с мобильным приложением, поддерживая обновления в реальном времени и плавный рабочий процесс для водителей и диспетчеров.';
}

// Path: projects.gross_radar_mobile
class _TranslationsProjectsGrossRadarMobileRu implements TranslationsProjectsGrossRadarMobileEn {
	_TranslationsProjectsGrossRadarMobileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gross Radar Mobile';
	@override String get description => 'Я продолжил разработку мобильного приложения GrossRadar, сосредоточившись на исправлении ошибок и улучшении существующих функций. Я работал с Google Maps для реализации оптимизированных методов маршрутизации, которые предотвращают смешивание пунктов погрузки и разгрузки для каждого груза. Я улучшил отслеживание грузов в реальном времени, управление расходами и функции расчета зарплаты водителей, сохраняя при этом удобный интерфейс. Я обеспечил бесперебойную работу и надежную синхронизацию данных на платформах iOS и Android.';
}

// Path: projects.portfolio
class _TranslationsProjectsPortfolioRu implements TranslationsProjectsPortfolioEn {
	_TranslationsProjectsPortfolioRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'ЭТО ПОРТФОЛИО';
	@override String get description => 'Я создал это портфолио, чтобы продемонстрировать свои навыки и проекты. Это веб-приложение на Flutter.';
}

// Path: projects.maru
class _TranslationsProjectsMaruRu implements TranslationsProjectsMaruEn {
	_TranslationsProjectsMaruRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maru';
	@override String get description => 'Maru был разработан для создания безопасного и децентрализованного способа доступа к интернету, устойчивого к цензуре и обеспечивающего высокий уровень анонимности. Сеть состоит из множества узлов, созданных пользователями по всему миру, что делает её децентрализованной и устойчивой к атакам.';
}

// Path: projects.papi_burgers
class _TranslationsProjectsPapiBurgersRu implements TranslationsProjectsPapiBurgersEn {
	_TranslationsProjectsPapiBurgersRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Papi Burgers';
	@override String get description => 'Это приложение функционирует как платформа доставки для сети ресторанов, предлагая пользователям интуитивный способ заказа еды. В начале пользователи выбирают предпочитаемый ресторан, добавляют желаемые блюда в корзину и плавно переходят к оформлению заказа с интегрированными вариантами оплаты для удобства транзакций. Кроме того, мощное административное приложение обеспечивает полный контроль над операциями платформы. Администраторы могут легко управлять ресторанами, редактировать или добавлять меню, обновлять местоположения ресторанов на карте, публиковать вакансии и выполнять различные другие административные задачи для обеспечения бесперебойной работы платформы.';
}

// Path: projects.nullend_vpn
class _TranslationsProjectsNullendVpnRu implements TranslationsProjectsNullendVpnEn {
	_TranslationsProjectsNullendVpnRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'NullEnd VPN';
	@override String get description => 'NULL END® - это приложение, которое сочетает технологии VPN и Tor для обеспечения надежной цифровой безопасности. VPN шифрует ваш трафик и скрывает ваш IP-адрес, в то время как Tor обеспечивает анонимный просмотр интернета через безопасную сеть серверов. Вместе они обеспечивают защиту от отслеживания и утечек данных, делая NULL END® новым стандартом в интернет-безопасности. Приложение включает два протокола VPN и гибкие настройки Tor для обхода блокировок, шифруя весь трафик устройства для надежной защиты. Как разработчик приложения, я внедрил некоторые небольшие исправления для улучшения нативных компонентов, повышая его производительность.';
}

// Path: projects.nullend_browser
class _TranslationsProjectsNullendBrowserRu implements TranslationsProjectsNullendBrowserEn {
	_TranslationsProjectsNullendBrowserRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'NullEnd Browser';
	@override String get description => 'Приложение представляет собой безопасный браузер со встроенным VPN (NullEnd VPN), предлагающий стандартный и режим инкогнито. В режиме инкогнито очищается история просмотров, файлы cookie и кэш, отключается WebRTC, а загрузки требуют подтверждения для предотвращения случайных файлов или вирусов. Поддерживается просмотр во вкладках, закладки с редактированием, история поиска и отслеживание загрузок. Доступно на русском и английском языках.';
}

// Path: projects.easy_pgp
class _TranslationsProjectsEasyPgpRu implements TranslationsProjectsEasyPgpEn {
	_TranslationsProjectsEasyPgpRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'EasyPGP';
	@override String get description => 'Приложение расшифровывает PGP-зашифрованные сообщения, используя пароль и приватный ключ PGP. Расшифровывайте сообщения, вставляя зашифрованный текст или сканируя QR-код. Если у вас нет ключей PGP, создайте их в приложении с длиной 2048, 4096 или 8192 бит. Созданные ключи надежно хранятся на вашем телефоне. Вы также можете загрузить существующие пары ключей. Доступ может быть защищен паролем, отпечатком пальца или Face ID.';
}

// Path: projects.taxi_app
class _TranslationsProjectsTaxiAppRu implements TranslationsProjectsTaxiAppEn {
	_TranslationsProjectsTaxiAppRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Taxi App';
	@override String get description => 'Реальное название приложения сохраняется в тайне по просьбе клиента. Я участвовал в разработке всего пользовательского интерфейса (верстка), интеграции и оптимизации Google Maps.';
}

// Path: projects.horizon_village
class _TranslationsProjectsHorizonVillageRu implements TranslationsProjectsHorizonVillageEn {
	_TranslationsProjectsHorizonVillageRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Horizon Village';
	@override String get description => 'Это приложение предназначено для отдаленных регионов Узбекистана. Жители могут использовать его для покупки или продажи товаров на рынке, получения новостей от местных властей, просмотра рекламных объявлений, поиска попутки в город или предложения подвоза другим.';
}

// Path: projects.kami
class _TranslationsProjectsKamiRu implements TranslationsProjectsKamiEn {
	_TranslationsProjectsKamiRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kami';
	@override String get description => 'Приложение KAMI, которое скоро будет переименовано в APAR, было создано для производителя экологически чистых электрических грузовиков для оптимизации грузоперевозок. Пользователи могут заказать транспорт, выбрав до 3 точек доставки на карте, просмотреть все заказы и получить доступ к подробной информации о маршруте и заказе прямо в приложении.';
}

// Path: projects.budget_manager
class _TranslationsProjectsBudgetManagerRu implements TranslationsProjectsBudgetManagerEn {
	_TranslationsProjectsBudgetManagerRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Budget Manager';
	@override String get description => 'Мое первое приложение на Flutter! Оно помогает отслеживать ваши расходы и доходы и доступно на четырех языках. Я разработал каждый аспект приложения, за исключением графического представления фильтрации расходов/доходов по месяцам и функциональности хранения локальной валюты.';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'home.experience' => 'Опыт',
			'home.projects' => 'Проекты',
			'home.skills' => 'Знания',
			'home.blog' => 'Блог',
			'home.change_language' => 'Изменить язык',
			'home.footer_text' => 'Создано на Flutter ❤️ \n Макс Буланович | Flutter разработчик',
			'home.open_linkedin' => 'Открыть LinkedIn',
			'home.open_github' => 'Открыть GitHub',
			'home.message_telegram' => 'Написать в Telegram',
			'home.follow_instagram' => 'Подписаться в Instagram',
			'about.name' => 'Макс Буланович',
			'about.role' => 'Flutter Разработчик',
			'about.descr_first' => 'Flutter Разработчик | Создаю увлекательные и высокопроизводительные мобильные приложения | Стремлюсь учиться, адаптироваться и внедрять инновации',
			'about.descr_second' => 'Помимо разработки приложений, я сотрудничаю с опытными специалистами для создания веб-сайтов, Telegram-ботов и графического дизайна, чтобы воплотить ваши идеи в жизнь. Свяжитесь со мной для создания сайтов, UI/UX дизайна, Telegram-ботов и другого.',
			'about.about_me' => 'Обо мне',
			'about.get_in_touch' => 'Связаться',
			'about.statistics' => 'Статистика',
			'about.years_experience' => '+ лет опыта',
			'about.hours_coding' => '+ часов кодинга',
			'about.cups' => '+ чашек чая',
			'about.projects' => '+ коммерческих проектов',
			'actually' => 'Сейчас',
			'freelance' => 'Фриланс',
			'adaptine_descr' => 'Разработка мобильных и веб-приложений',
			'freelance_descr' => 'Создание кроссплатформенных приложений для iOS, Android и Web с акцентом на инновации.',
			'projects.gross_radar_tms.name' => 'Gross Radar TMS',
			'projects.gross_radar_tms.description' => 'Я разработал систему управления транспортом (TMS) с нуля для работы с мобильным приложением GrossRadar, обеспечивая создание и управление грузами для пользователей приложения. Я создал функции для создания организаций, приглашения пользователей из приложения и эффективного управления поездками. Я реализовал инструменты для создания, назначения и отслеживания поездок, а также мониторинга прогресса и истории поездок. Система бесшовно интегрируется с мобильным приложением, поддерживая обновления в реальном времени и плавный рабочий процесс для водителей и диспетчеров.',
			'projects.gross_radar_mobile.name' => 'Gross Radar Mobile',
			'projects.gross_radar_mobile.description' => 'Я продолжил разработку мобильного приложения GrossRadar, сосредоточившись на исправлении ошибок и улучшении существующих функций. Я работал с Google Maps для реализации оптимизированных методов маршрутизации, которые предотвращают смешивание пунктов погрузки и разгрузки для каждого груза. Я улучшил отслеживание грузов в реальном времени, управление расходами и функции расчета зарплаты водителей, сохраняя при этом удобный интерфейс. Я обеспечил бесперебойную работу и надежную синхронизацию данных на платформах iOS и Android.',
			'projects.portfolio.name' => 'ЭТО ПОРТФОЛИО',
			'projects.portfolio.description' => 'Я создал это портфолио, чтобы продемонстрировать свои навыки и проекты. Это веб-приложение на Flutter.',
			'projects.maru.name' => 'Maru',
			'projects.maru.description' => 'Maru был разработан для создания безопасного и децентрализованного способа доступа к интернету, устойчивого к цензуре и обеспечивающего высокий уровень анонимности. Сеть состоит из множества узлов, созданных пользователями по всему миру, что делает её децентрализованной и устойчивой к атакам.',
			'projects.papi_burgers.name' => 'Papi Burgers',
			'projects.papi_burgers.description' => 'Это приложение функционирует как платформа доставки для сети ресторанов, предлагая пользователям интуитивный способ заказа еды. В начале пользователи выбирают предпочитаемый ресторан, добавляют желаемые блюда в корзину и плавно переходят к оформлению заказа с интегрированными вариантами оплаты для удобства транзакций. Кроме того, мощное административное приложение обеспечивает полный контроль над операциями платформы. Администраторы могут легко управлять ресторанами, редактировать или добавлять меню, обновлять местоположения ресторанов на карте, публиковать вакансии и выполнять различные другие административные задачи для обеспечения бесперебойной работы платформы.',
			'projects.nullend_vpn.name' => 'NullEnd VPN',
			'projects.nullend_vpn.description' => 'NULL END® - это приложение, которое сочетает технологии VPN и Tor для обеспечения надежной цифровой безопасности. VPN шифрует ваш трафик и скрывает ваш IP-адрес, в то время как Tor обеспечивает анонимный просмотр интернета через безопасную сеть серверов. Вместе они обеспечивают защиту от отслеживания и утечек данных, делая NULL END® новым стандартом в интернет-безопасности. Приложение включает два протокола VPN и гибкие настройки Tor для обхода блокировок, шифруя весь трафик устройства для надежной защиты. Как разработчик приложения, я внедрил некоторые небольшие исправления для улучшения нативных компонентов, повышая его производительность.',
			'projects.nullend_browser.name' => 'NullEnd Browser',
			'projects.nullend_browser.description' => 'Приложение представляет собой безопасный браузер со встроенным VPN (NullEnd VPN), предлагающий стандартный и режим инкогнито. В режиме инкогнито очищается история просмотров, файлы cookie и кэш, отключается WebRTC, а загрузки требуют подтверждения для предотвращения случайных файлов или вирусов. Поддерживается просмотр во вкладках, закладки с редактированием, история поиска и отслеживание загрузок. Доступно на русском и английском языках.',
			'projects.easy_pgp.name' => 'EasyPGP',
			'projects.easy_pgp.description' => 'Приложение расшифровывает PGP-зашифрованные сообщения, используя пароль и приватный ключ PGP. Расшифровывайте сообщения, вставляя зашифрованный текст или сканируя QR-код. Если у вас нет ключей PGP, создайте их в приложении с длиной 2048, 4096 или 8192 бит. Созданные ключи надежно хранятся на вашем телефоне. Вы также можете загрузить существующие пары ключей. Доступ может быть защищен паролем, отпечатком пальца или Face ID.',
			'projects.taxi_app.name' => 'Taxi App',
			'projects.taxi_app.description' => 'Реальное название приложения сохраняется в тайне по просьбе клиента. Я участвовал в разработке всего пользовательского интерфейса (верстка), интеграции и оптимизации Google Maps.',
			'projects.horizon_village.name' => 'Horizon Village',
			'projects.horizon_village.description' => 'Это приложение предназначено для отдаленных регионов Узбекистана. Жители могут использовать его для покупки или продажи товаров на рынке, получения новостей от местных властей, просмотра рекламных объявлений, поиска попутки в город или предложения подвоза другим.',
			'projects.kami.name' => 'Kami',
			'projects.kami.description' => 'Приложение KAMI, которое скоро будет переименовано в APAR, было создано для производителя экологически чистых электрических грузовиков для оптимизации грузоперевозок. Пользователи могут заказать транспорт, выбрав до 3 точек доставки на карте, просмотреть все заказы и получить доступ к подробной информации о маршруте и заказе прямо в приложении.',
			'projects.budget_manager.name' => 'Budget Manager',
			'projects.budget_manager.description' => 'Мое первое приложение на Flutter! Оно помогает отслеживать ваши расходы и доходы и доступно на четырех языках. Я разработал каждый аспект приложения, за исключением графического представления фильтрации расходов/доходов по месяцам и функциональности хранения локальной валюты.',
			'about_me' => 'Меня зовут Макс Буланович, и я Flutter-разработчик. Мой путь в программирование начался совсем не так, как у большинства.\n\nСначала меня программирование вообще не интересовало — я не понимал, как создаются приложения и даже не пытался разобраться. Но мне всегда было любопытно, как устроены вещи: как камера делает снимок, почему едет машина, как звук попадает в наушники.\n\nВсё изменилось 14 сентября 2022 года, когда я случайно наткнулся на видео в TikTok: таймлапс создания приложения на Flutter, и результат мгновенно появлялся на эмуляторе телефона. Этот момент меня поразил. Я не понимал, что именно происходит, но был поражён тем, как код прямо на глазах превращается в визуальный результат.\n\nЯ полез в комментарии, где увидел слова: фреймворк, кроссплатформенность, Dart, Flutter… Всё это было для меня новым. Я начал гуглить, и в тот же день нашёл урок на YouTube, в котором разработчик создавал простое ToDo-приложение на Flutter и Firebase. Я не просто посмотрел — я сразу начал повторять.\n\nВ тот день я учился около 10 часов, и к вечеру уже создавал своё первое приложение. Оно превратилось в Budget Manager — проект, над которым я работал с октября по декабрь 2022 года и затем опубликовал в Google Play.\n\nС самого начала у меня было бесконечно много вопросов, и я каждый день по многу часов учился. Но это не было в тягость — наоборот, это было невероятно увлекательно. Я всегда любил изучать новые технологии и экспериментировать с идеями, и Flutter открыл для меня целый новый мир.\n\nВ мае 2023 года я получил первое предложение по фрилансу. Вместе с коллегой мы сделали реальное рабочее приложение. Тогда я понял: я создаю что-то, чем люди действительно пользуются. Это дало огромную мотивацию. С тех пор не прошло ни дня, чтобы я не работал над каким-то проектом — это мог быть стартап, фриланс-заказ или моя личная идея.\n\nНо я беру не каждый проект. Для меня важно создавать приложения, которые полезны, значимы и сделаны с душой. Поэтому я не работаю над копиями, азартными приложениями, фишингом или чем-то вредным.\n\nЕсли у вас есть идея, которая может сделать жизнь людей проще, лучше или вдохновеннее — давайте поговорим! Буду рад обсудить ваш проект и помочь воплотить его в жизнь.',
			_ => null,
		};
	}
}

