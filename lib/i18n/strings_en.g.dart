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
			_ => null,
		};
	}
}

