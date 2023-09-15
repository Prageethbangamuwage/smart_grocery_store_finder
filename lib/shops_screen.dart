import 'package:flutter/material.dart';
import 'package:search_bar/search_bar.dart'; // Import the 'search_bar' package

void main() => runApp(const SearchBarApp());

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({Key? key}) : super(key: key);

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light); // Removed 'useMaterial3'

    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(title: const Text('Search Bar Sample')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBar(
            onSearch: (String search) {}, // Add an empty onSearch callback
            hintText: 'Search...', // Provide a hint text
            icon: const Icon(Icons.search),
            buildDefaultAppBar: false, // Set this to false to customize the app bar
            appBar: AppBar(
              // Customize the app bar
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: <Widget>[
                Tooltip(
                  message: 'Change brightness mode',
                  child: IconButton(
                    isSelected: isDark,
                    onPressed: () {
                      setState(() {
                        isDark = !isDark;
                      });
                    },
                    icon: const Icon(Icons.wb_sunny_outlined),
                    selectedIcon: const Icon(Icons.brightness_2_outlined),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
