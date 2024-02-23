import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktok/presentation/providers/discover_provider.dart';
import 'package:toktok/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DisccoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center()
          : VideoScrollableView(
              videos: discoverProvider.videos,
            ),
    );
  }
}
