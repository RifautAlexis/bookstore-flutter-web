import 'package:flutter/material.dart';

import 'mocks/book.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen() : super();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _buildAppBar(screenSize),
      body: _buildBody(screenSize),
      backgroundColor: Color(0xFF2a2c3e),
    );
  }

  Widget _buildBody(Size screenSize) {
    final books = myBooks;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width / 4),
      child: Wrap(
        runSpacing: 25,
        spacing: 25,
        children: [
          ...books
              .map(
                (book) => Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                  decoration: BoxDecoration(
                    color: Color(0xFF94959e),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(book.image),
                      SizedBox(height: 25),
                      Text(
                        book.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(book.author),
                    ],
                  ),
                ),
              )
              .toList()
              .cast<Widget>(),
        ],
      ),
    );
  }

  PreferredSize _buildAppBar(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 122),
      child: Container(
        padding: EdgeInsets.all(20),
        child: IntrinsicHeight(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Bookstore',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width / 5,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        labelText: 'Search for title, author, tags, etc',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          margin: EdgeInsets.all(5),
                          child: IconButton(
                            onPressed: () => print("Search pressed"),
                            icon: Icon(Icons.search),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 15),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
