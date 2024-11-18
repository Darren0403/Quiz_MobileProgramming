import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: themeProvider.fontStyle,
        ),
      ),
      body: Column(
        children: [
          Text(
            'Select Theme',
            style: themeProvider.fontStyle.copyWith(fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => themeProvider.setTheme(ThemeData.light()),
                child: const Text('Light'),
              ),
              ElevatedButton(
                onPressed: () => themeProvider.setTheme(ThemeData.dark()),
                child: const Text('Dark'),
              ),
              ElevatedButton(
                onPressed: () => themeProvider.setTheme(
                  ThemeData(primarySwatch: Colors.purple),
                ),
                child: const Text('Purple'),
              ),
            ],
          ),
          const Divider(),
          Text(
            'Select Font',
            style: themeProvider.fontStyle.copyWith(fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => themeProvider.setFont(GoogleFonts.roboto()),
                child: const Text('Roboto'),
              ),
              ElevatedButton(
                onPressed: () => themeProvider.setFont(GoogleFonts.lobster()),
                child: const Text('Lobster'),
              ),
              ElevatedButton(
                onPressed: () => themeProvider.setFont(GoogleFonts.oswald()),
                child: const Text('Oswald'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
