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
class TranslationsCs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCs _root = this; // ignore: unused_field

	@override 
	TranslationsCs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsHomeCs home = _TranslationsHomeCs._(_root);
	@override late final _TranslationsAboutCs about = _TranslationsAboutCs._(_root);
}

// Path: home
class _TranslationsHomeCs implements TranslationsHomeEn {
	_TranslationsHomeCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get experience => 'Zkušenosti';
	@override String get projects => 'Projekty';
	@override String get skills => 'Dovednosti';
	@override String get blog => 'Blog';
	@override String get change_language => 'Změnit jazyk';
	@override String get footer_text => 'Vytvořeno ve Flutteru ❤️ \n Maxim Bulanovich | Flutter vývojář';
	@override String get open_linkedin => 'Otevřít LinkedIn';
	@override String get open_github => 'Otevřít GitHub';
	@override String get message_telegram => 'Poslat zprávu na Telegram';
	@override String get follow_instagram => 'Sledovat na Instagramu';
}

// Path: about
class _TranslationsAboutCs implements TranslationsAboutEn {
	_TranslationsAboutCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Max Bulanovich';
	@override String get role => 'Flutter Vývojář';
	@override String get descr_first => 'Flutter Vývojář | Vytvářím poutavé a výkonné mobilní aplikace | Chuť učit se, přizpůsobovat se a přinášet inovace';
	@override String get descr_second => 'Kromě vývoje aplikací spolupracuji se zkušenými specialisty na tvorbě webových stránek, Telegram botů a grafického designu, abych přivedl vaše nápady k životu. Neváhejte mě kontaktovat pro tvorbu webů, UI/UX design, Telegram boty a další.';
	@override String get about_me => 'O mně';
	@override String get get_in_touch => 'Kontaktujte mě';
	@override String get statistics => 'Statistiky';
	@override String get years_experience => '+ let zkušeností';
	@override String get hours_coding => '+ hodin kódování';
	@override String get cups => '+ šálků čaje';
	@override String get projects => '+ komerčních projektů';
}

/// The flat map containing all translations for locale <cs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'home.experience' => 'Zkušenosti',
			'home.projects' => 'Projekty',
			'home.skills' => 'Dovednosti',
			'home.blog' => 'Blog',
			'home.change_language' => 'Změnit jazyk',
			'home.footer_text' => 'Vytvořeno ve Flutteru ❤️ \n Maxim Bulanovich | Flutter vývojář',
			'home.open_linkedin' => 'Otevřít LinkedIn',
			'home.open_github' => 'Otevřít GitHub',
			'home.message_telegram' => 'Poslat zprávu na Telegram',
			'home.follow_instagram' => 'Sledovat na Instagramu',
			'about.name' => 'Max Bulanovich',
			'about.role' => 'Flutter Vývojář',
			'about.descr_first' => 'Flutter Vývojář | Vytvářím poutavé a výkonné mobilní aplikace | Chuť učit se, přizpůsobovat se a přinášet inovace',
			'about.descr_second' => 'Kromě vývoje aplikací spolupracuji se zkušenými specialisty na tvorbě webových stránek, Telegram botů a grafického designu, abych přivedl vaše nápady k životu. Neváhejte mě kontaktovat pro tvorbu webů, UI/UX design, Telegram boty a další.',
			'about.about_me' => 'O mně',
			'about.get_in_touch' => 'Kontaktujte mě',
			'about.statistics' => 'Statistiky',
			'about.years_experience' => '+ let zkušeností',
			'about.hours_coding' => '+ hodin kódování',
			'about.cups' => '+ šálků čaje',
			'about.projects' => '+ komerčních projektů',
			_ => null,
		};
	}
}

