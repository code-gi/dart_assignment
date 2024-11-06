import 'package:dart_project/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
      id: 1, // Assuming id is an int
      name: 'Pink hand bag',
      image: "data:image/jpeg;base64,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",
      description: 'Classy Handbags',
    ),
      CategoryModel(
      id: 2, // Assuming id is an int
      name: 'Pizza',
      image: "data:image/jpeg;base64,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",
      description: 'Tasty pizza',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            leading: Image.network(
              category.image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(category.name),
            subtitle: Text(category.description),
          );
        },
      ),
    );
  }
}
