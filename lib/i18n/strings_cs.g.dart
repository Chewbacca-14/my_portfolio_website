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
	@override String get actually => 'Teď';
	@override String get freelance => 'Freelance';
	@override String get adaptine_descr => 'Vývoj mobilních a webových aplikací';
	@override String get freelance_descr => 'Tvorba multiplatformních aplikací pro iOS, Android a Web se zaměřením na inovace.';
	@override late final _TranslationsProjectsCs projects = _TranslationsProjectsCs._(_root);
	@override String get about_me => 'Jmenuji se Max Bulanovich a jsem Flutter vývojář. Moje cesta k programování nezačala úplně typicky.\n\nZpočátku mě programování vůbec nezajímalo — neměl jsem tušení, jak se aplikace vytvářejí, a ani jsem se to nesnažil zjistit. Vždy mě ale fascinovalo, jak věci fungují: jak fotoaparát zachytí obraz, proč se auto pohybuje, jak se zvuk dostane do sluchátek.\n\nVšechno se změnilo 14. září 2022, když jsem náhodou narazil na video na TikToku: časosběr vývoje aplikace ve Flutteru, kde se výsledek okamžitě zobrazoval v emulátoru telefonu. Ten moment mě doslova zasáhl. Nechápal jsem, co přesně vidím, ale fascinovalo mě, jak se nápad díky kódu okamžitě promění ve vizuální podobu.\n\nPodíval jsem se do komentářů, kde lidé psali slova jako framework, multiplatformní, Dart, Flutter… všechno to pro mě bylo úplně nové. Začal jsem hledat informace a ještě ten samý den jsem našel video na YouTube, kde někdo vytvářel jednoduchou ToDo aplikaci pomocí Flutteru a Firebase. Nejenže jsem se díval — hned jsem začal psát kód s ním.\n\nTen den jsem strávil asi 10 hodin učením a večer jsem už vytvářel svou první aplikaci. Ta se nakonec stala Budget Managerem — projektem, na kterém jsem pracoval od října do prosince 2022 a později ho zveřejnil na Google Play.\n\nOd začátku jsem měl nespočet otázek a každý den jsem se několik hodin učil. Nebylo to únavné — naopak, bylo to nesmírně vzrušující. Vždy jsem miloval objevování nových technologií a experimentování s nápady, a Flutter mi otevřel úplně nový svět.\n\nV květnu 2023 jsem dostal svou první nabídku na freelance práci. Společně s kolegou jsme vytvořili skutečnou funkční aplikaci. V tu chvíli jsem si uvědomil: vytvářím něco, co lidé opravdu používají. To mě motivovalo ještě víc.\n\nOd té doby neuplynul jediný den, kdy bych nepracoval na nějakém projektu — ať už to byl startup, zakázka na volné noze, nebo můj vlastní nápad.\n\nAle neberu každý projekt. Je pro mě důležité vytvářet aplikace, které jsou užitečné, smysluplné a dělány s nadšením. Proto nepracuji na kopiích, hazardních aplikacích, phishingu ani na ničem škodlivém.\n\nPokud máte nápad, který může lidem zpříjemnit, zjednodušit nebo obohatit život — ozvěte se! Rád si váš projekt poslechnu a pomohu ho přivést k životu.';
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

// Path: projects
class _TranslationsProjectsCs implements TranslationsProjectsEn {
	_TranslationsProjectsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsProjectsGrossRadarTmsCs gross_radar_tms = _TranslationsProjectsGrossRadarTmsCs._(_root);
	@override late final _TranslationsProjectsGrossRadarMobileCs gross_radar_mobile = _TranslationsProjectsGrossRadarMobileCs._(_root);
	@override late final _TranslationsProjectsPortfolioCs portfolio = _TranslationsProjectsPortfolioCs._(_root);
	@override late final _TranslationsProjectsMaruCs maru = _TranslationsProjectsMaruCs._(_root);
	@override late final _TranslationsProjectsPapiBurgersCs papi_burgers = _TranslationsProjectsPapiBurgersCs._(_root);
	@override late final _TranslationsProjectsNullendVpnCs nullend_vpn = _TranslationsProjectsNullendVpnCs._(_root);
	@override late final _TranslationsProjectsNullendBrowserCs nullend_browser = _TranslationsProjectsNullendBrowserCs._(_root);
	@override late final _TranslationsProjectsEasyPgpCs easy_pgp = _TranslationsProjectsEasyPgpCs._(_root);
	@override late final _TranslationsProjectsTaxiAppCs taxi_app = _TranslationsProjectsTaxiAppCs._(_root);
	@override late final _TranslationsProjectsHorizonVillageCs horizon_village = _TranslationsProjectsHorizonVillageCs._(_root);
	@override late final _TranslationsProjectsKamiCs kami = _TranslationsProjectsKamiCs._(_root);
	@override late final _TranslationsProjectsBudgetManagerCs budget_manager = _TranslationsProjectsBudgetManagerCs._(_root);
}

// Path: projects.gross_radar_tms
class _TranslationsProjectsGrossRadarTmsCs implements TranslationsProjectsGrossRadarTmsEn {
	_TranslationsProjectsGrossRadarTmsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gross Radar TMS';
	@override String get description => 'Vyvinul jsem systém správy dopravy (TMS) od začátku pro práci s mobilní aplikací GrossRadar, který umožňuje vytváření a správu nákladů pro uživatele aplikace. Vytvořil jsem funkce pro vytváření organizací, pozvání uživatelů z aplikace a efektivní správu cest. Implementoval jsem nástroje pro vytváření, přiřazování a sledování cest, stejně jako monitorování průběhu a historie cest. Systém se hladce integruje s mobilní aplikací a podporuje aktualizace v reálném čase a plynulý pracovní postup pro řidiče a dispečery.';
}

// Path: projects.gross_radar_mobile
class _TranslationsProjectsGrossRadarMobileCs implements TranslationsProjectsGrossRadarMobileEn {
	_TranslationsProjectsGrossRadarMobileCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gross Radar Mobile';
	@override String get description => 'Pokračoval jsem ve vývoji mobilní aplikace GrossRadar se zaměřením na opravy chyb a vylepšení stávajících funkcí. Pracoval jsem s Google Maps na implementaci optimalizovaných metod směrování, které zabraňují míchání míst nakládky a vykládky pro každý náklad. Vylepšil jsem sledování nákladu v reálném čase, správu výdajů a funkce výplat řidičů při zachování uživatelsky přívětivého rozhraní. Zajistil jsem bezproblémový výkon a spolehlivou synchronizaci dat napříč platformami iOS a Android.';
}

// Path: projects.portfolio
class _TranslationsProjectsPortfolioCs implements TranslationsProjectsPortfolioEn {
	_TranslationsProjectsPortfolioCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'TOTO PORTFOLIO';
	@override String get description => 'Vytvořil jsem toto portfolio, abych předvedl své dovednosti a projekty. Je to webová aplikace Flutter.';
}

// Path: projects.maru
class _TranslationsProjectsMaruCs implements TranslationsProjectsMaruEn {
	_TranslationsProjectsMaruCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maru';
	@override String get description => 'Maru byl vyvinut pro vytvoření bezpečného a decentralizovaného způsobu přístupu k internetu, který je odolný vůči cenzuře a zajišťuje vysokou úroveň anonymity. Síť se skládá z mnoha uzlů vytvořených uživateli po celém světě, což ji činí decentralizovanou a odolnou vůči útokům.';
}

// Path: projects.papi_burgers
class _TranslationsProjectsPapiBurgersCs implements TranslationsProjectsPapiBurgersEn {
	_TranslationsProjectsPapiBurgersCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Papi Burgers';
	@override String get description => 'Tato aplikace funguje jako doručovací platforma pro síť restaurací a nabízí uživatelům intuitivní způsob objednávání jídla. Na začátku si uživatelé vyberou preferovanou restauraci, přidají požadované položky do košíku a hladce přejdou k pokladně s integrovanými platebními možnostmi pro bezproblémový proces transakce. Kromě toho výkonná administrátorská aplikace poskytuje plnou kontrolu nad provozem platformy. Administrátoři mohou snadno spravovat restaurace, upravovat nebo přidávat menu, aktualizovat umístění restaurací na mapě, zveřejňovat pracovní příležitosti a provádět různé další administrativní úkoly pro zajištění hladké správy platformy.';
}

// Path: projects.nullend_vpn
class _TranslationsProjectsNullendVpnCs implements TranslationsProjectsNullendVpnEn {
	_TranslationsProjectsNullendVpnCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'NullEnd VPN';
	@override String get description => 'NULL END® je aplikace, která kombinuje technologie VPN a Tor pro poskytnutí robustní digitální bezpečnosti. VPN šifruje váš provoz a skrývá vaši IP adresu, zatímco Tor umožňuje anonymní procházení internetu prostřednictvím zabezpečené sítě serverů. Společně zajišťují ochranu proti sledování a únikům dat, díky čemuž je NULL END® novým standardem v internetové bezpečnosti. Aplikace zahrnuje dva VPN protokoly a flexibilní nastavení Tor pro obcházení bloků, šifrování veškerého provozu zařízení pro spolehlivou ochranu. Jako vývojář aplikace jsem implementoval některé malé opravy pro zlepšení nativních komponent a zvýšení jejího výkonu.';
}

// Path: projects.nullend_browser
class _TranslationsProjectsNullendBrowserCs implements TranslationsProjectsNullendBrowserEn {
	_TranslationsProjectsNullendBrowserCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'NullEnd Browser';
	@override String get description => 'Aplikace je bezpečný prohlížeč s integrovaným VPN (NullEnd VPN) nabízející standardní režim a režim inkognito. V režimu inkognito se vymazává historie prohlížení, soubory cookie a mezipaměť, WebRTC je zakázán a stahování vyžaduje potvrzení, aby se zabránilo náhodným souborům nebo virům. Podporuje procházení ve více kartách, záložky s úpravami, historii vyhledávání a sledování stahování. Dostupné v ruštině a angličtině.';
}

// Path: projects.easy_pgp
class _TranslationsProjectsEasyPgpCs implements TranslationsProjectsEasyPgpEn {
	_TranslationsProjectsEasyPgpCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'EasyPGP';
	@override String get description => 'Aplikace dešifruje PGP šifrované zprávy pomocí hesla a soukromého klíče PGP. Dešifrujte zprávy vložením šifrovaného textu nebo naskenováním QR kódu. Pokud nemáte klíče PGP, vygenerujte je v aplikaci s délkou 2048, 4096 nebo 8192 bitů. Vygenerované klíče jsou bezpečně uloženy ve vašem telefonu. Můžete také nahrát existující páry klíčů. Přístup může být zabezpečen heslem, otiskem prstu nebo Face ID.';
}

// Path: projects.taxi_app
class _TranslationsProjectsTaxiAppCs implements TranslationsProjectsTaxiAppEn {
	_TranslationsProjectsTaxiAppCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Taxi App';
	@override String get description => 'Skutečný název aplikace je udržován v tajnosti na žádost klienta. Podílel jsem se na vývoji celého uživatelského rozhraní (rozložení), integraci a optimalizaci Google Maps.';
}

// Path: projects.horizon_village
class _TranslationsProjectsHorizonVillageCs implements TranslationsProjectsHorizonVillageEn {
	_TranslationsProjectsHorizonVillageCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Horizon Village';
	@override String get description => 'Tato aplikace je určena pro vzdálené regiony v Uzbekistánu. Obyvatelé ji mohou používat ke koupi nebo prodeji předmětů na tržišti, přijímání zpráv od místních úřadů, prohlížení reklamních příspěvků, hledání spolujízdy do města nebo nabídnutí jízdy ostatním.';
}

// Path: projects.kami
class _TranslationsProjectsKamiCs implements TranslationsProjectsKamiEn {
	_TranslationsProjectsKamiCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kami';
	@override String get description => 'Aplikace KAMI, která bude brzy přejmenována na APAR, byla vytvořena pro výrobce ekologických elektrických nákladních vozidel pro zjednodušení nákladní dopravy. Uživatelé mohou objednat dopravu výběrem až 3 míst doručení na mapě, zobrazit všechny objednávky a získat přístup k podrobným informacím o trase a objednávce přímo v aplikaci.';
}

// Path: projects.budget_manager
class _TranslationsProjectsBudgetManagerCs implements TranslationsProjectsBudgetManagerEn {
	_TranslationsProjectsBudgetManagerCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Budget Manager';
	@override String get description => 'Moje první aplikace Flutter! Pomáhá sledovat vaše výdaje a příjmy a je dostupná ve čtyřech jazycích. Navrhl jsem každý aspekt aplikace kromě grafické reprezentace filtrování výdajů/příjmů podle měsíce a funkcionality ukládání místní měny.';
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
			'actually' => 'Teď',
			'freelance' => 'Freelance',
			'adaptine_descr' => 'Vývoj mobilních a webových aplikací',
			'freelance_descr' => 'Tvorba multiplatformních aplikací pro iOS, Android a Web se zaměřením na inovace.',
			'projects.gross_radar_tms.name' => 'Gross Radar TMS',
			'projects.gross_radar_tms.description' => 'Vyvinul jsem systém správy dopravy (TMS) od začátku pro práci s mobilní aplikací GrossRadar, který umožňuje vytváření a správu nákladů pro uživatele aplikace. Vytvořil jsem funkce pro vytváření organizací, pozvání uživatelů z aplikace a efektivní správu cest. Implementoval jsem nástroje pro vytváření, přiřazování a sledování cest, stejně jako monitorování průběhu a historie cest. Systém se hladce integruje s mobilní aplikací a podporuje aktualizace v reálném čase a plynulý pracovní postup pro řidiče a dispečery.',
			'projects.gross_radar_mobile.name' => 'Gross Radar Mobile',
			'projects.gross_radar_mobile.description' => 'Pokračoval jsem ve vývoji mobilní aplikace GrossRadar se zaměřením na opravy chyb a vylepšení stávajících funkcí. Pracoval jsem s Google Maps na implementaci optimalizovaných metod směrování, které zabraňují míchání míst nakládky a vykládky pro každý náklad. Vylepšil jsem sledování nákladu v reálném čase, správu výdajů a funkce výplat řidičů při zachování uživatelsky přívětivého rozhraní. Zajistil jsem bezproblémový výkon a spolehlivou synchronizaci dat napříč platformami iOS a Android.',
			'projects.portfolio.name' => 'TOTO PORTFOLIO',
			'projects.portfolio.description' => 'Vytvořil jsem toto portfolio, abych předvedl své dovednosti a projekty. Je to webová aplikace Flutter.',
			'projects.maru.name' => 'Maru',
			'projects.maru.description' => 'Maru byl vyvinut pro vytvoření bezpečného a decentralizovaného způsobu přístupu k internetu, který je odolný vůči cenzuře a zajišťuje vysokou úroveň anonymity. Síť se skládá z mnoha uzlů vytvořených uživateli po celém světě, což ji činí decentralizovanou a odolnou vůči útokům.',
			'projects.papi_burgers.name' => 'Papi Burgers',
			'projects.papi_burgers.description' => 'Tato aplikace funguje jako doručovací platforma pro síť restaurací a nabízí uživatelům intuitivní způsob objednávání jídla. Na začátku si uživatelé vyberou preferovanou restauraci, přidají požadované položky do košíku a hladce přejdou k pokladně s integrovanými platebními možnostmi pro bezproblémový proces transakce. Kromě toho výkonná administrátorská aplikace poskytuje plnou kontrolu nad provozem platformy. Administrátoři mohou snadno spravovat restaurace, upravovat nebo přidávat menu, aktualizovat umístění restaurací na mapě, zveřejňovat pracovní příležitosti a provádět různé další administrativní úkoly pro zajištění hladké správy platformy.',
			'projects.nullend_vpn.name' => 'NullEnd VPN',
			'projects.nullend_vpn.description' => 'NULL END® je aplikace, která kombinuje technologie VPN a Tor pro poskytnutí robustní digitální bezpečnosti. VPN šifruje váš provoz a skrývá vaši IP adresu, zatímco Tor umožňuje anonymní procházení internetu prostřednictvím zabezpečené sítě serverů. Společně zajišťují ochranu proti sledování a únikům dat, díky čemuž je NULL END® novým standardem v internetové bezpečnosti. Aplikace zahrnuje dva VPN protokoly a flexibilní nastavení Tor pro obcházení bloků, šifrování veškerého provozu zařízení pro spolehlivou ochranu. Jako vývojář aplikace jsem implementoval některé malé opravy pro zlepšení nativních komponent a zvýšení jejího výkonu.',
			'projects.nullend_browser.name' => 'NullEnd Browser',
			'projects.nullend_browser.description' => 'Aplikace je bezpečný prohlížeč s integrovaným VPN (NullEnd VPN) nabízející standardní režim a režim inkognito. V režimu inkognito se vymazává historie prohlížení, soubory cookie a mezipaměť, WebRTC je zakázán a stahování vyžaduje potvrzení, aby se zabránilo náhodným souborům nebo virům. Podporuje procházení ve více kartách, záložky s úpravami, historii vyhledávání a sledování stahování. Dostupné v ruštině a angličtině.',
			'projects.easy_pgp.name' => 'EasyPGP',
			'projects.easy_pgp.description' => 'Aplikace dešifruje PGP šifrované zprávy pomocí hesla a soukromého klíče PGP. Dešifrujte zprávy vložením šifrovaného textu nebo naskenováním QR kódu. Pokud nemáte klíče PGP, vygenerujte je v aplikaci s délkou 2048, 4096 nebo 8192 bitů. Vygenerované klíče jsou bezpečně uloženy ve vašem telefonu. Můžete také nahrát existující páry klíčů. Přístup může být zabezpečen heslem, otiskem prstu nebo Face ID.',
			'projects.taxi_app.name' => 'Taxi App',
			'projects.taxi_app.description' => 'Skutečný název aplikace je udržován v tajnosti na žádost klienta. Podílel jsem se na vývoji celého uživatelského rozhraní (rozložení), integraci a optimalizaci Google Maps.',
			'projects.horizon_village.name' => 'Horizon Village',
			'projects.horizon_village.description' => 'Tato aplikace je určena pro vzdálené regiony v Uzbekistánu. Obyvatelé ji mohou používat ke koupi nebo prodeji předmětů na tržišti, přijímání zpráv od místních úřadů, prohlížení reklamních příspěvků, hledání spolujízdy do města nebo nabídnutí jízdy ostatním.',
			'projects.kami.name' => 'Kami',
			'projects.kami.description' => 'Aplikace KAMI, která bude brzy přejmenována na APAR, byla vytvořena pro výrobce ekologických elektrických nákladních vozidel pro zjednodušení nákladní dopravy. Uživatelé mohou objednat dopravu výběrem až 3 míst doručení na mapě, zobrazit všechny objednávky a získat přístup k podrobným informacím o trase a objednávce přímo v aplikaci.',
			'projects.budget_manager.name' => 'Budget Manager',
			'projects.budget_manager.description' => 'Moje první aplikace Flutter! Pomáhá sledovat vaše výdaje a příjmy a je dostupná ve čtyřech jazycích. Navrhl jsem každý aspekt aplikace kromě grafické reprezentace filtrování výdajů/příjmů podle měsíce a funkcionality ukládání místní měny.',
			'about_me' => 'Jmenuji se Max Bulanovich a jsem Flutter vývojář. Moje cesta k programování nezačala úplně typicky.\n\nZpočátku mě programování vůbec nezajímalo — neměl jsem tušení, jak se aplikace vytvářejí, a ani jsem se to nesnažil zjistit. Vždy mě ale fascinovalo, jak věci fungují: jak fotoaparát zachytí obraz, proč se auto pohybuje, jak se zvuk dostane do sluchátek.\n\nVšechno se změnilo 14. září 2022, když jsem náhodou narazil na video na TikToku: časosběr vývoje aplikace ve Flutteru, kde se výsledek okamžitě zobrazoval v emulátoru telefonu. Ten moment mě doslova zasáhl. Nechápal jsem, co přesně vidím, ale fascinovalo mě, jak se nápad díky kódu okamžitě promění ve vizuální podobu.\n\nPodíval jsem se do komentářů, kde lidé psali slova jako framework, multiplatformní, Dart, Flutter… všechno to pro mě bylo úplně nové. Začal jsem hledat informace a ještě ten samý den jsem našel video na YouTube, kde někdo vytvářel jednoduchou ToDo aplikaci pomocí Flutteru a Firebase. Nejenže jsem se díval — hned jsem začal psát kód s ním.\n\nTen den jsem strávil asi 10 hodin učením a večer jsem už vytvářel svou první aplikaci. Ta se nakonec stala Budget Managerem — projektem, na kterém jsem pracoval od října do prosince 2022 a později ho zveřejnil na Google Play.\n\nOd začátku jsem měl nespočet otázek a každý den jsem se několik hodin učil. Nebylo to únavné — naopak, bylo to nesmírně vzrušující. Vždy jsem miloval objevování nových technologií a experimentování s nápady, a Flutter mi otevřel úplně nový svět.\n\nV květnu 2023 jsem dostal svou první nabídku na freelance práci. Společně s kolegou jsme vytvořili skutečnou funkční aplikaci. V tu chvíli jsem si uvědomil: vytvářím něco, co lidé opravdu používají. To mě motivovalo ještě víc.\n\nOd té doby neuplynul jediný den, kdy bych nepracoval na nějakém projektu — ať už to byl startup, zakázka na volné noze, nebo můj vlastní nápad.\n\nAle neberu každý projekt. Je pro mě důležité vytvářet aplikace, které jsou užitečné, smysluplné a dělány s nadšením. Proto nepracuji na kopiích, hazardních aplikacích, phishingu ani na ničem škodlivém.\n\nPokud máte nápad, který může lidem zpříjemnit, zjednodušit nebo obohatit život — ozvěte se! Rád si váš projekt poslechnu a pomohu ho přivést k životu.',
			_ => null,
		};
	}
}

