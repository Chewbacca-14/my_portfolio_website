import 'package:flutter/material.dart';
import 'package:my_portfolio_website/i18n/strings.g.dart';
import 'package:my_portfolio_website/models/project.dart';
import 'package:my_portfolio_website/screens/project_screen.dart';
import 'package:my_portfolio_website/utils/project_assets.dart';
import 'package:my_portfolio_website/utils/widgets/projects/project_card.dart';
part 'projects_list.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: _myProjects(context)
          .map(
            (project) => ProjectCard(
              project: project,
              onTap: () {
                if (project.assets != null && project.assets!.isNotEmpty) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProjectScreen(
                        projectName: project.name,
                        images: project.assets,
                      ),
                    ),
                  );
                }
              },
            ),
          )
          .toList(),
    );
  }
}
