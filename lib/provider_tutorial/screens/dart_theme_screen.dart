import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_perference/provider_tutorial/provider/theme_changes.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context); // Moved here
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider tutorial"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Mode"),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),Icon(Icons.favorite)
        ],
      ),
    );
  }
}
