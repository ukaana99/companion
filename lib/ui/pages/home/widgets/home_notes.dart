part of '../home_page.dart';

class HomeNotes extends StatelessWidget {
  const HomeNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: Text(
              "Notes",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const _HomeNoteItem(title: "Note 1"),
          const _HomeNoteItem(title: "Note 2"),
        ],
      ),
    );
  }
}

class _HomeNoteItem extends StatelessWidget {
  const _HomeNoteItem({
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundOverlay,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: SizedBox.expand(child: Text(title)),
    );
  }
}
