import 'package:flutter/material.dart';
import 'package:my_portfolio_website/models/project.dart';
import 'package:my_portfolio_website/screens/project_screen.dart';
import 'package:my_portfolio_website/utils/widgets/projects/project_card.dart';
part 'projects_list.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: _myProjects
          .map((project) => ProjectCard(
              project: project,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProjectScreen(projectName: project.name),
                  ),
                );
              }))
          .toList(),
    );
  }
}
