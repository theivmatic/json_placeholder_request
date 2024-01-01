import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_placeholder_request/src/feature/presentation/bloc/json_placeholder_bloc.dart';
import 'package:json_placeholder_request/src/feature/presentation/widgets/post_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late JsonPlaceholderBloc? jsonPlaceholderBloc;

  @override
  void initState() {
    jsonPlaceholderBloc = context.read<JsonPlaceholderBloc>()
      ..add(FetchJsonPlaceholderBlocEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 240, 244),
      body: BlocBuilder<JsonPlaceholderBloc, JsonPlaceholderBlocState>(
          bloc: jsonPlaceholderBloc,
          builder: (context, state) => switch (state) {
                JsonPlaceholderBlocLoadedState() => ListView.separated(
                    itemBuilder: (context, index) {
                      return PostCardWidget(userID: state.jsonPlaceholderLoaded[index].userID, title: state.jsonPlaceholderLoaded[index].title, post: state.jsonPlaceholderLoaded[index].body,);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(color: Color.fromARGB(255, 234, 240, 244),),
                    itemCount: state.jsonPlaceholderLoaded.length,
                  ),
                JsonPlaceholderBlocLoadingState() => const SizedBox(),
                JsonPlaceholderBlocErrorState() => const SizedBox(),
                _ => const Placeholder(),
              }),
    );
  }
}
