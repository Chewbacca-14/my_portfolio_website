import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  final String projectName;

  const ProjectScreen({
    super.key,
    required this.projectName,
  });

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 250;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                projectName,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Aligns content at the top
          crossAxisAlignment: CrossAxisAlignment.center, // Centers content horizontally
          children: [
            Flexible(
              child: Align(
                alignment: Alignment.topCenter,
                child: GridView.builder(
                  shrinkWrap: true, // Ensures GridView doesn't take unnecessary space
                  padding: EdgeInsets.zero,
                  itemCount: nullEndBrowserLinks.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.1,
                    crossAxisCount: crossAxisCount,
                    mainAxisExtent: 400,
                  ),
                  itemBuilder: (context, index) {
                    return Image.asset(
                      nullEndBrowserLinks[index],
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> nullEndBrowserLinks = [
  'assets/null_end_browser/null_end_browser_1.png',
  'assets/null_end_browser/null_end_browser_2.png',
  'assets/null_end_browser/null_end_browser_3.png',
  'assets/null_end_browser/null_end_browser_4.png',
  // 'assets/null_end_browser/null_end_browser_5.png',
  'assets/null_end_browser/null_end_browser_6.png',
  'assets/null_end_browser/null_end_browser_7.png',
  'assets/null_end_browser/null_end_browser_8.png',
];
