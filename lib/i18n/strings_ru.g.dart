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
}

// Path: home
class _TranslationsHomeRu implements TranslationsHomeEn {
	_TranslationsHomeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get experience => 'Опыт';
	@override String get projects => 'Проекты';
	@override String get skills => 'Скиллы';
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
			'home.skills' => 'Скиллы',
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
			_ => null,
		};
	}
}

