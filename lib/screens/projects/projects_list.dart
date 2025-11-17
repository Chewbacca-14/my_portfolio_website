part of 'projects.dart';

List<Project> _myProjects(BuildContext context) {
  final t = Translations.of(context);

  return [
    Project(
      assets: null,
      name: t.projects.gross_radar_tms.name,
      badges: ['Commercial', 'Flutter', 'Dart', 'Web'],
      url: 'https://grossradar.com/',
      description: t.projects.gross_radar_tms.description,
    ),
    Project(
      assets: null,
      name: t.projects.gross_radar_mobile.name,
      badges: ['Commercial', 'Flutter', 'Dart', 'Google Maps', 'iOS', 'Android'],
      url: 'https://grossradar.com/',
      description: t.projects.gross_radar_mobile.description,
    ),
    Project(
      assets: null,
      name: t.projects.portfolio.name,
      badges: ['Portfolio', 'Flutter', 'Dart'],
      url: 'https://github.com/Chewbacca-14/my_portfolio_website',
      description: t.projects.portfolio.description,
    ),
    Project(
      assets: null,
      name: t.projects.maru.name,
      badges: ['Commercial App', 'Flutter', 'Dart', 'Decentralized network'],
      url: null,
      description: t.projects.maru.description,
    ),
    Project(
      assets: papiBurgersLinks,
      name: t.projects.papi_burgers.name,
      badges: [
        'Commercial App',
        'Flutter',
        'Dart',
        'Firebase',
        'Google Maps API',
      ],
      url: 'https://www.instagram.com/papi__burgers/',
      description: t.projects.papi_burgers.description,
    ),
    Project(
      assets: nullEndVpnLinks,
      name: t.projects.nullend_vpn.name,
      badges: ['Commercial App', 'Flutter', 'Dart', 'Kotlin', 'Java'],
      url: 'https://nullend.org/',
      description: t.projects.nullend_vpn.description,
    ),
    Project(
      assets: nullEndBrowserLinks,
      name: t.projects.nullend_browser.name,
      badges: ['Commercial App', 'Flutter', 'Dart', 'Firebase', 'WebView'],
      url: 'https://nullend.org/',
      description: t.projects.nullend_browser.description,
    ),
    Project(
      assets: easyPgpLinks,
      name: t.projects.easy_pgp.name,
      badges: ['Commercial App', 'Flutter', 'Dart', 'openpgp', 'Secured Storage'],
      url: null,
      description: t.projects.easy_pgp.description,
    ),
    Project(
      assets: taxiAppLinks,
      name: t.projects.taxi_app.name,
      badges: ['Commercial App', 'Flutter', 'Dart'],
      url: null,
      description: t.projects.taxi_app.description,
    ),
    Project(
      assets: horizonLinks,
      name: t.projects.horizon_village.name,
      badges: ['Commercial App', 'Flutter', 'Dart', 'Firebase'],
      url: null,
      description: t.projects.horizon_village.description,
    ),
    Project(
      assets: kamiLinks,
      name: t.projects.kami.name,
      badges: ['Commercial App', 'Flutter', 'Dart', 'AppWrite', 'Google Maps API'],
      url: null,
      description: t.projects.kami.description,
    ),
    Project(
      assets: budgetManagerLinks,
      name: t.projects.budget_manager.name,
      badges: ['Pet Project', 'Flutter', 'Dart', 'Firebase', 'Shared Preferences'],
      url: null,
      description: t.projects.budget_manager.description,
    ),
  ];
}
