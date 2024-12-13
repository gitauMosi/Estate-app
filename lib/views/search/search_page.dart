import 'package:estate_app/data/data.dart';
import 'package:estate_app/models/estate.dart';
import 'package:estate_app/widgets/explore_card_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Explore",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            leadingWidth: 200,
            floating: true,
            expandedHeight: 100,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(
                  60), // Adjusted size to avoid layout conflicts
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: SearchBar(
                      hintText: "Search Chat....",
                    ), // Ensure SearchBar is a properly defined widget
                  ),
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                        backgroundColor: Theme.of(context).cardColor,
                        shadowColor: Colors.grey,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.grey[300]!))),
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid.builder(
              itemCount: estates.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                Estate estate = estates[index];
                return ExploreCardWidget(estate: estate);
              })
        ],
      ),
    );
  }
}
