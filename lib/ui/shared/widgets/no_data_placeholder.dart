import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoDataPlaceholder extends StatelessWidget {
  const NoDataPlaceholder(
    this.assetName, {
    super.key,
    required this.title,
    this.semanticsLabel = '',
    this.description = '',
    this.isLoading = true,
  });

  final String assetName;
  final String title;
  final String semanticsLabel;
  final String description;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: SvgPicture.asset(assetName, semanticsLabel: semanticsLabel),
        ),
        const SizedBox(height: 16),
        isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )
            : Column(
                children: [
                  Text(title, style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 8),
                  Text(description,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
        const SizedBox(height: 120),
      ],
    );
  }
}
