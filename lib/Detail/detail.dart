import 'package:flutter/material.dart';
import 'package:gamestore/Detail/widgets/detail_sliver.dart';
import 'package:gamestore/models/game.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.game});

  final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 300,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
