import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/widgets/asset_image_widget.dart';

class ProjectScreen extends StatelessWidget {
  final String projectName;
  final List<String>? images;

  const ProjectScreen({
    super.key,
    required this.projectName,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: AppBar(
        toolbarHeight: 86,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: theme.colorScheme.primary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          projectName,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Container(
              padding: const EdgeInsets.all(26),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface.withValues(alpha: 0.84),
                borderRadius: BorderRadius.circular(34),
                border: Border.all(color: theme.colorScheme.outline),
              ),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    ...images!.map(
                      (link) => Container(
                        width: 280,
                        height: 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: theme.colorScheme.outline),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: AssetImageWithPlaceholder(
                            assetPath: link,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
