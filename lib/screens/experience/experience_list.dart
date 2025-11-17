part of 'experience.dart';

List<Experience> _myExperience(context) {
  final t = Translations.of(context);
  return [
    Experience(
      from: '06.2024',
      to: t.actually,
      position: 'Flutter Developer',
      company: 'Adaptine, s.r.o.',
      description: t.adaptine_descr,
    ),
    Experience(
      from: '05.2023',
      to: t.actually,
      position: 'Flutter Developer',
      company: t.freelance,
      description: t.freelance_descr,
    ),
  ];
}
