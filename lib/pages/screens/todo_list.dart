import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/itemlists.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () => context.read<TodoModel>().addtoList(),
              icon: const Icon(Icons.add)),
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: nDefaultPadding, vertical: nDefaultPadding),
          child: ListView.builder(
              itemCount: context.watch<TodoModel>().taskList.length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () =>
                        context.read<TodoModel>().removefromList(index),
                    child: Text(
                      "${context.watch<TodoModel>().taskList[index].id} ${context.watch<TodoModel>().taskList[index].title}",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  )),
        ));
  }
}
