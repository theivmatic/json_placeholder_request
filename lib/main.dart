import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_placeholder_request/src/feature/presentation/bloc/json_placeholder_bloc.dart';
import 'package:json_placeholder_request/src/feature/presentation/bloc/observer.dart';
import 'package:json_placeholder_request/src/feature/presentation/pages/home_page.dart';

void main() {
  Bloc.observer = AppObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JsonPlaceholderBloc(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
