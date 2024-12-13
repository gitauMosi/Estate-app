import 'package:estate_app/constants/color.dart';
import 'package:estate_app/data/data.dart';
import 'package:estate_app/widgets/message_tile.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: null,
            floating: true,
            expandedHeight: 100,
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Chats",
                style: TextStyle(
                  fontSize: 25,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
          SliverToBoxAdapter(
            child: _buildBody(),
          )
        ],
      ),
    );
  }

  Padding _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return MessageTile(
                  message: messages[index],
                );
              })
        ],
      ),
    );
  }
}
