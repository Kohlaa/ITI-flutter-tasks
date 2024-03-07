import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'homeScreen/register/register.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => register()),
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 50, // Replace with actual number of contacts
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/person.png'),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Kohlaa',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20, // Replace with actual number of conversations
                itemBuilder: (BuildContext context, int index) {
                  return const ConversationListItem();
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement functionality to start a new conversation
        },
        child: const Icon(Icons.message),
      ),
      // bottomNavigationBar: Home(), // Uncomment this line if you want to use the custom bottom navigation bar
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DotNavigationBar(
      currentIndex: _SelectedTab.values.indexOf(_selectedTab),
      dotIndicatorColor: Colors.white,
      unselectedItemColor: Colors.grey[300],
      splashBorderRadius: 50,
      onTap: _handleIndexChanged,
      items: [
        DotNavigationBarItem(
          icon: const Icon(Icons.home),
          selectedColor: const Color(0xff73544C),
        ),
        DotNavigationBarItem(
          icon: const Icon(Icons.favorite),
          selectedColor: const Color(0xff73544C),
        ),
        DotNavigationBarItem(
          icon: const Icon(Icons.search),
          selectedColor: const Color(0xff73544C),
        ),
        DotNavigationBarItem(
          icon: const Icon(Icons.person),
          selectedColor: const Color(0xff73544C),
        ),
      ],
    );
  }
}

enum _SelectedTab { home, favorite, search, person }

class ConversationListItem extends StatelessWidget {
  const ConversationListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 10,
        backgroundImage: AssetImage('assets/images/person.png'),
      ),
      title: const Text(
        'Kohlaa',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'Hello',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // Display last message time
            '10:30 AM',
            style: TextStyle(color: Colors.grey),
          ),
          // Add unread message count if any
          // You can use a badge or any other widget for this
        ],
      ),
      onTap: () {
        // Implement navigation to conversation screen
      },
    );
  }
}
