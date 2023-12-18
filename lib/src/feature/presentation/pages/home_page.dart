import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_placeholder_request/src/feature/presentation/bloc/json_placeholder_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late JsonPlaceholderBloc jsonPlaceholderBloc;

  @override
  void initState() {
    jsonPlaceholderBloc = context.read<JsonPlaceholderBloc>()
      ..add(FetchJsonPlaceholderBlocEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<JsonPlaceholderBloc, JsonPlaceholderBlocState>(
          bloc: jsonPlaceholderBloc,
          builder: (context, state) => switch (state) {
                JsonPlaceholderBlocLoadedState() => Column(
                    children: [
                      Text(state.jsonPlaceholderLoaded[0].body ?? 'ddd'),
                    ],
                  ),
                JsonPlaceholderBlocLoadingState() => const SizedBox(),
                JsonPlaceholderBlocErrorState() => const SizedBox(),
                _ => const Placeholder(),
              }),
    );
  }
}
