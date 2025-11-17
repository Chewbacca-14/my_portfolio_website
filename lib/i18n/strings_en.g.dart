///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsAboutEn about = TranslationsAboutEn._(_root);

	/// en: 'Actually'
	String get actually => 'Actually';

	/// en: 'Freelance'
	String get freelance => 'Freelance';

	/// en: 'Developing Mobile and Web applications'
	String get adaptine_descr => 'Developing Mobile and Web applications';

	/// en: 'Creating cross-platform iOS, Android ans Web Apps with a focus on innovation.'
	String get freelance_descr => 'Creating cross-platform iOS, Android ans Web Apps with a focus on innovation.';

	late final TranslationsProjectsEn projects = TranslationsProjectsEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Experience'
	String get experience => 'Experience';

	/// en: 'Projects'
	String get projects => 'Projects';

	/// en: 'Skills'
	String get skills => 'Skills';

	/// en: 'Blog'
	String get blog => 'Blog';

	/// en: 'Change Language'
	String get change_language => 'Change Language';

	/// en: 'Made with Flutter ❤️ by Maxim Bulanovich | Flutter Developer'
	String get footer_text => 'Made with Flutter ❤️ \nby Maxim Bulanovich | Flutter Developer';

	/// en: 'Open LinkedIn'
	String get open_linkedin => 'Open LinkedIn';

	/// en: 'Open GitHub'
	String get open_github => 'Open GitHub';

	/// en: 'Message on Telegram'
	String get message_telegram => 'Message on Telegram';

	/// en: 'Follow on Instagram'
	String get follow_instagram => 'Follow on Instagram';
}

// Path: about
class TranslationsAboutEn {
	TranslationsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Max Bulanovich'
	String get name => 'Max Bulanovich';

	/// en: 'Flutter Developer'
	String get role => 'Flutter Developer';

	/// en: 'Flutter Developer | Crafting Engaging and High-Performance Mobile Applications | Eager to Learn, Adapt, and Drive Innovation'
	String get descr_first => 'Flutter Developer | Crafting Engaging and High-Performance Mobile Applications | Eager to Learn, Adapt, and Drive Innovation';

	/// en: 'In addition to App Development, I collaborate with experienced specialists to create Websites, Telegram Bots, and Graphic Design to bring your ideas to life. Feel free to contact me for website creation, UI/UX design, Telegram bots, and more.'
	String get descr_second => 'In addition to App Development, I collaborate with experienced specialists to create Websites, Telegram Bots, and Graphic Design to bring your ideas to life. Feel free to contact me for website creation, UI/UX design, Telegram bots, and more.';

	/// en: 'About Me'
	String get about_me => 'About Me';

	/// en: 'Get in Touch'
	String get get_in_touch => 'Get in Touch';

	/// en: 'Statistics'
	String get statistics => 'Statistics';

	/// en: '+ years of experience'
	String get years_experience => '+ years of experience';

	/// en: '+ hours of coding'
	String get hours_coding => '+ hours of coding';

	/// en: '+ coups of tea'
	String get cups => '+ coups of tea';

	/// en: '+ commercial projects'
	String get projects => '+ commercial projects';
}

// Path: projects
class TranslationsProjectsEn {
	TranslationsProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsProjectsGrossRadarTmsEn gross_radar_tms = TranslationsProjectsGrossRadarTmsEn._(_root);
	late final TranslationsProjectsGrossRadarMobileEn gross_radar_mobile = TranslationsProjectsGrossRadarMobileEn._(_root);
	late final TranslationsProjectsPortfolioEn portfolio = TranslationsProjectsPortfolioEn._(_root);
	late final TranslationsProjectsMaruEn maru = TranslationsProjectsMaruEn._(_root);
	late final TranslationsProjectsPapiBurgersEn papi_burgers = TranslationsProjectsPapiBurgersEn._(_root);
	late final TranslationsProjectsNullendVpnEn nullend_vpn = TranslationsProjectsNullendVpnEn._(_root);
	late final TranslationsProjectsNullendBrowserEn nullend_browser = TranslationsProjectsNullendBrowserEn._(_root);
	late final TranslationsProjectsEasyPgpEn easy_pgp = TranslationsProjectsEasyPgpEn._(_root);
	late final TranslationsProjectsTaxiAppEn taxi_app = TranslationsProjectsTaxiAppEn._(_root);
	late final TranslationsProjectsHorizonVillageEn horizon_village = TranslationsProjectsHorizonVillageEn._(_root);
	late final TranslationsProjectsKamiEn kami = TranslationsProjectsKamiEn._(_root);
	late final TranslationsProjectsBudgetManagerEn budget_manager = TranslationsProjectsBudgetManagerEn._(_root);
}

// Path: projects.gross_radar_tms
class TranslationsProjectsGrossRadarTmsEn {
	TranslationsProjectsGrossRadarTmsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Gross Radar TMS'
	String get name => 'Gross Radar TMS';

	/// en: 'I developed a Transportation Management System (TMS) from scratch to work with the GrossRadar mobile app, enabling the creation and management of loads for app users. I built features to create organizations, invite users from the app, and manage trips efficiently. I implemented tools for creating, assigning, and tracking trips, as well as monitoring trip progress and history. The system integrates seamlessly with the mobile app, supporting real-time updates and smooth workflow for drivers and dispatchers.'
	String get description => 'I developed a Transportation Management System (TMS) from scratch to work with the GrossRadar mobile app, enabling the creation and management of loads for app users. I built features to create organizations, invite users from the app, and manage trips efficiently. I implemented tools for creating, assigning, and tracking trips, as well as monitoring trip progress and history. The system integrates seamlessly with the mobile app, supporting real-time updates and smooth workflow for drivers and dispatchers.';
}

// Path: projects.gross_radar_mobile
class TranslationsProjectsGrossRadarMobileEn {
	TranslationsProjectsGrossRadarMobileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Gross Radar Mobile'
	String get name => 'Gross Radar Mobile';

	/// en: 'I continued development of the GrossRadar Mobile App, focusing on bug fixes and improving existing features. I worked with Google Maps to implement optimized routing methods that prevent mixing pickups and drop-offs for each load. I enhanced real-time load tracking, expense management, and driver payroll features while keeping the interface user-friendly. I ensured seamless performance and reliable data synchronization across iOS and Android platforms.'
	String get description => 'I continued development of the GrossRadar Mobile App, focusing on bug fixes and improving existing features. I worked with Google Maps to implement optimized routing methods that prevent mixing pickups and drop-offs for each load. I enhanced real-time load tracking, expense management, and driver payroll features while keeping the interface user-friendly. I ensured seamless performance and reliable data synchronization across iOS and Android platforms.';
}

// Path: projects.portfolio
class TranslationsProjectsPortfolioEn {
	TranslationsProjectsPortfolioEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'THIS PORTFOLIO'
	String get name => 'THIS PORTFOLIO';

	/// en: 'I created this portfolio to showcase my skills and projects. It is a Flutter web application.'
	String get description => 'I created this portfolio to showcase my skills and projects. It is a Flutter web application.';
}

// Path: projects.maru
class TranslationsProjectsMaruEn {
	TranslationsProjectsMaruEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Maru'
	String get name => 'Maru';

	/// en: 'Maru was developed to create a secure and decentralized way to access the internet that is resistant to censorship and ensures a high level of anonymity. The network consists of numerous nodes created by users around the world, making it decentralized and resilient to attacks.'
	String get description => 'Maru was developed to create a secure and decentralized way to access the internet that is resistant to censorship and ensures a high level of anonymity. The network consists of numerous nodes created by users around the world, making it decentralized and resilient to attacks.';
}

// Path: projects.papi_burgers
class TranslationsProjectsPapiBurgersEn {
	TranslationsProjectsPapiBurgersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Papi Burgers'
	String get name => 'Papi Burgers';

	/// en: 'This application functions as a delivery platform for a network of restaurants, offering users an intuitive way to order food. At the start, users select their preferred restaurant, add desired items to their cart, and proceed seamlessly to checkout, with integrated payment options for a smooth transaction process. In addition, a powerful Admin application provides full control over the platform's operations. Administrators can easily manage restaurants, edit or add menus, update restaurant locations on the map, post job vacancies, and perform various other administrative tasks to ensure smooth platform management.'
	String get description => 'This application functions as a delivery platform for a network of restaurants, offering users an intuitive way to order food. At the start, users select their preferred restaurant, add desired items to their cart, and proceed seamlessly to checkout, with integrated payment options for a smooth transaction process. In addition, a powerful Admin application provides full control over the platform\'s operations. Administrators can easily manage restaurants, edit or add menus, update restaurant locations on the map, post job vacancies, and perform various other administrative tasks to ensure smooth platform management.';
}

// Path: projects.nullend_vpn
class TranslationsProjectsNullendVpnEn {
	TranslationsProjectsNullendVpnEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'NullEnd VPN'
	String get name => 'NullEnd VPN';

	/// en: 'NULL END® is an application that combines VPN and Tor technologies to provide robust digital security. VPN encrypts your traffic and hides your IP address, while Tor enables anonymous internet browsing through a secure network of servers. Together, they ensure protection against tracking and data leaks, making NULL END® a new standard in internet security. The app includes two VPN protocols and flexible Tor settings to bypass blocks, encrypting all device traffic for dependable protection. As the app's developer, I've implemented some small fixes to improve non-native components, enhancing its performance.'
	String get description => 'NULL END® is an application that combines VPN and Tor technologies to provide robust digital security. VPN encrypts your traffic and hides your IP address, while Tor enables anonymous internet browsing through a secure network of servers. Together, they ensure protection against tracking and data leaks, making NULL END® a new standard in internet security. The app includes two VPN protocols and flexible Tor settings to bypass blocks, encrypting all device traffic for dependable protection. As the app\'s developer, I\'ve implemented some small fixes to improve non-native components, enhancing its performance.';
}

// Path: projects.nullend_browser
class TranslationsProjectsNullendBrowserEn {
	TranslationsProjectsNullendBrowserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'NullEnd Browser'
	String get name => 'NullEnd Browser';

	/// en: 'The application is a secure browser with an integrated VPN (NullEnd VPN) offering Standard and Incognito modes. In Incognito mode, browsing history, cookies, and cache are cleared, WebRTC is disabled, and downloads require confirmation to prevent accidental files or viruses. It supports tabbed browsing, bookmarks with editing, search history, and download tracking. Available in Russian and English.'
	String get description => 'The application is a secure browser with an integrated VPN (NullEnd VPN) offering Standard and Incognito modes. In Incognito mode, browsing history, cookies, and cache are cleared, WebRTC is disabled, and downloads require confirmation to prevent accidental files or viruses. It supports tabbed browsing, bookmarks with editing, search history, and download tracking. Available in Russian and English.';
}

// Path: projects.easy_pgp
class TranslationsProjectsEasyPgpEn {
	TranslationsProjectsEasyPgpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'EasyPGP'
	String get name => 'EasyPGP';

	/// en: 'The app decrypts PGP-encrypted messages using the password and the PGP private key. Decrypt messages by pasting the encrypted text or scanning a QR code. If you don't have PGP keys, generate them in the app with 2048, 4096, or 8192-bit lengths. Generated keys are securely stored on your phone. You can also upload existing key pairs. Access can be secured with a password, fingerprint, or Face ID.'
	String get description => 'The app decrypts PGP-encrypted messages using the password and the PGP private key. Decrypt messages by pasting the encrypted text or scanning a QR code. If you don\'t have PGP keys, generate them in the app with 2048, 4096, or 8192-bit lengths. Generated keys are securely stored on your phone. You can also upload existing key pairs. Access can be secured with a password, fingerprint, or Face ID.';
}

// Path: projects.taxi_app
class TranslationsProjectsTaxiAppEn {
	TranslationsProjectsTaxiAppEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Taxi App'
	String get name => 'Taxi App';

	/// en: 'The application's real name is kept confidential at the client's request. I was involved in developing the entire UI (layout), Google Maps integration and optimization.'
	String get description => 'The application\'s real name is kept confidential at the client\'s request. I was involved in developing the entire UI (layout), Google Maps integration and optimization.';
}

// Path: projects.horizon_village
class TranslationsProjectsHorizonVillageEn {
	TranslationsProjectsHorizonVillageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Horizon Village'
	String get name => 'Horizon Village';

	/// en: 'This app is designed for remote regions in Uzbekistan. Residents can use it to buy or sell items in the marketplace, receive news from local authorities, view promotional posts, find a ride to the city, or offer rides to others.'
	String get description => 'This app is designed for remote regions in Uzbekistan. Residents can use it to buy or sell items in the marketplace, receive news from local authorities, view promotional posts, find a ride to the city, or offer rides to others.';
}

// Path: projects.kami
class TranslationsProjectsKamiEn {
	TranslationsProjectsKamiEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Kami'
	String get name => 'Kami';

	/// en: 'The KAMI app, soon to be rebranded as APAR, was created for the eco-friendly electric truck manufacturer to streamline freight transportation. Users can order transport by selecting up to 3 delivery points on a map, view all orders, and access detailed route and order information directly in the app.'
	String get description => 'The KAMI app, soon to be rebranded as APAR, was created for the eco-friendly electric truck manufacturer to streamline freight transportation. Users can order transport by selecting up to 3 delivery points on a map, view all orders, and access detailed route and order information directly in the app.';
}

// Path: projects.budget_manager
class TranslationsProjectsBudgetManagerEn {
	TranslationsProjectsBudgetManagerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Budget Manager'
	String get name => 'Budget Manager';

	/// en: 'My first Flutter app! It helps you track your expenses and income and is available in four languages. I designed every aspect of the app except for the graphical representation of expense/income filtering by month and local currency storage functionality.'
	String get description => 'My first Flutter app! It helps you track your expenses and income and is available in four languages. I designed every aspect of the app except for the graphical representation of expense/income filtering by month and local currency storage functionality.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'home.experience' => 'Experience',
			'home.projects' => 'Projects',
			'home.skills' => 'Skills',
			'home.blog' => 'Blog',
			'home.change_language' => 'Change Language',
			'home.footer_text' => 'Made with Flutter ❤️ \nby Maxim Bulanovich | Flutter Developer',
			'home.open_linkedin' => 'Open LinkedIn',
			'home.open_github' => 'Open GitHub',
			'home.message_telegram' => 'Message on Telegram',
			'home.follow_instagram' => 'Follow on Instagram',
			'about.name' => 'Max Bulanovich',
			'about.role' => 'Flutter Developer',
			'about.descr_first' => 'Flutter Developer | Crafting Engaging and High-Performance Mobile Applications | Eager to Learn, Adapt, and Drive Innovation',
			'about.descr_second' => 'In addition to App Development, I collaborate with experienced specialists to create Websites, Telegram Bots, and Graphic Design to bring your ideas to life. Feel free to contact me for website creation, UI/UX design, Telegram bots, and more.',
			'about.about_me' => 'About Me',
			'about.get_in_touch' => 'Get in Touch',
			'about.statistics' => 'Statistics',
			'about.years_experience' => '+ years of experience',
			'about.hours_coding' => '+ hours of coding',
			'about.cups' => '+ coups of tea',
			'about.projects' => '+ commercial projects',
			'actually' => 'Actually',
			'freelance' => 'Freelance',
			'adaptine_descr' => 'Developing Mobile and Web applications',
			'freelance_descr' => 'Creating cross-platform iOS, Android ans Web Apps with a focus on innovation.',
			'projects.gross_radar_tms.name' => 'Gross Radar TMS',
			'projects.gross_radar_tms.description' => 'I developed a Transportation Management System (TMS) from scratch to work with the GrossRadar mobile app, enabling the creation and management of loads for app users. I built features to create organizations, invite users from the app, and manage trips efficiently. I implemented tools for creating, assigning, and tracking trips, as well as monitoring trip progress and history. The system integrates seamlessly with the mobile app, supporting real-time updates and smooth workflow for drivers and dispatchers.',
			'projects.gross_radar_mobile.name' => 'Gross Radar Mobile',
			'projects.gross_radar_mobile.description' => 'I continued development of the GrossRadar Mobile App, focusing on bug fixes and improving existing features. I worked with Google Maps to implement optimized routing methods that prevent mixing pickups and drop-offs for each load. I enhanced real-time load tracking, expense management, and driver payroll features while keeping the interface user-friendly. I ensured seamless performance and reliable data synchronization across iOS and Android platforms.',
			'projects.portfolio.name' => 'THIS PORTFOLIO',
			'projects.portfolio.description' => 'I created this portfolio to showcase my skills and projects. It is a Flutter web application.',
			'projects.maru.name' => 'Maru',
			'projects.maru.description' => 'Maru was developed to create a secure and decentralized way to access the internet that is resistant to censorship and ensures a high level of anonymity. The network consists of numerous nodes created by users around the world, making it decentralized and resilient to attacks.',
			'projects.papi_burgers.name' => 'Papi Burgers',
			'projects.papi_burgers.description' => 'This application functions as a delivery platform for a network of restaurants, offering users an intuitive way to order food. At the start, users select their preferred restaurant, add desired items to their cart, and proceed seamlessly to checkout, with integrated payment options for a smooth transaction process. In addition, a powerful Admin application provides full control over the platform\'s operations. Administrators can easily manage restaurants, edit or add menus, update restaurant locations on the map, post job vacancies, and perform various other administrative tasks to ensure smooth platform management.',
			'projects.nullend_vpn.name' => 'NullEnd VPN',
			'projects.nullend_vpn.description' => 'NULL END® is an application that combines VPN and Tor technologies to provide robust digital security. VPN encrypts your traffic and hides your IP address, while Tor enables anonymous internet browsing through a secure network of servers. Together, they ensure protection against tracking and data leaks, making NULL END® a new standard in internet security. The app includes two VPN protocols and flexible Tor settings to bypass blocks, encrypting all device traffic for dependable protection. As the app\'s developer, I\'ve implemented some small fixes to improve non-native components, enhancing its performance.',
			'projects.nullend_browser.name' => 'NullEnd Browser',
			'projects.nullend_browser.description' => 'The application is a secure browser with an integrated VPN (NullEnd VPN) offering Standard and Incognito modes. In Incognito mode, browsing history, cookies, and cache are cleared, WebRTC is disabled, and downloads require confirmation to prevent accidental files or viruses. It supports tabbed browsing, bookmarks with editing, search history, and download tracking. Available in Russian and English.',
			'projects.easy_pgp.name' => 'EasyPGP',
			'projects.easy_pgp.description' => 'The app decrypts PGP-encrypted messages using the password and the PGP private key. Decrypt messages by pasting the encrypted text or scanning a QR code. If you don\'t have PGP keys, generate them in the app with 2048, 4096, or 8192-bit lengths. Generated keys are securely stored on your phone. You can also upload existing key pairs. Access can be secured with a password, fingerprint, or Face ID.',
			'projects.taxi_app.name' => 'Taxi App',
			'projects.taxi_app.description' => 'The application\'s real name is kept confidential at the client\'s request. I was involved in developing the entire UI (layout), Google Maps integration and optimization.',
			'projects.horizon_village.name' => 'Horizon Village',
			'projects.horizon_village.description' => 'This app is designed for remote regions in Uzbekistan. Residents can use it to buy or sell items in the marketplace, receive news from local authorities, view promotional posts, find a ride to the city, or offer rides to others.',
			'projects.kami.name' => 'Kami',
			'projects.kami.description' => 'The KAMI app, soon to be rebranded as APAR, was created for the eco-friendly electric truck manufacturer to streamline freight transportation. Users can order transport by selecting up to 3 delivery points on a map, view all orders, and access detailed route and order information directly in the app.',
			'projects.budget_manager.name' => 'Budget Manager',
			'projects.budget_manager.description' => 'My first Flutter app! It helps you track your expenses and income and is available in four languages. I designed every aspect of the app except for the graphical representation of expense/income filtering by month and local currency storage functionality.',
			_ => null,
		};
	}
}

