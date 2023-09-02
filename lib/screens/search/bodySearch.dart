// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "image": "assets/image/image1.webp",
      "name": "Mahabharat",
      "des": "Bharat",
    },
    {
      "id": 2,
      "image": "assets/image/image2.webp",
      "name": "Bhagavat Gita",
      "des": "Bharat",
    },
    {
      "id": 3,
      "image": "assets/image/image3.webp",
      "name": "Ramayan",
      "des": "Bharat",
    },
    {
      "id": 4,
      "image": "assets/image/image4.jpeg",
      "name": "swamivivekananda",
      "des": "Bharat",
    },
    {
      "id": 5,
      "image": "assets/image/image5.jpeg",
      "name": "Leadership Learning From \nChhatrapati Shivaji Maharaj",
      "des": "Bharat",
    },
    {
      "id": 6,
      "image": "assets/image/images1.jpeg",
      "name": "Khuda Bakhsh Oriental Library",
      "des": "Patna",
    },
    {
      "id": 7,
      "image": "assets/image/images2.jpeg",
      "name": "Delhi Public Library",
      "des": "Delhi",
    },
    {
      "id": 8,
      "image": "assets/image/images3.jpeg",
      "name": "Nehru Memorial Museum & Library",
      "des": "Delhi",
    },
    {
      "id": 9,
      "image": "assets/image/images4.jpeg",
      "name": "Swami Vivekanand Library",
      "des": "Bhopal",
    },
    {
      "id": 10,
      "image": "assets/image/images5.jpeg",
      "name": "British Library",
      "des": "Hyderabad",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers.where((user) => user["name"].toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage(_foundUsers[index]['image']),
                                )),
                          ),
                          // leading: CircleAvatar(
                          //   radius: 30.0,
                          //   backgroundImage:
                          //       AssetImage(_foundUsers[index]['image']),
                          //   backgroundColor: Colors.transparent,
                          // ),
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Text('${_foundUsers[index]["des"]}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
