import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp11_2());
}

class MyApp11_2 extends StatelessWidget {
  const MyApp11_2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABP Minggu 11',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(title: 'ABP Minggu 11'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> data = [
    {
      "title": "Native App",
      "platform": "Android, iOS",
      "lang": "Java, Kotlin, Swift, C#",
      "color": Colors.red,
    },
    {
      "title": "Hybrid App",
      "platform": "Android, iOS, Web",
      "lang": "Javascript, Dart",
      "color": Colors.grey,
    },
  ];
  final titleInput = TextEditingController();
  final platInput = TextEditingController();
  final langInput = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? col_selected;
  List<DropdownMenuItem<String>> dd_items = [
    DropdownMenuItem(child: Text('Blue'), value: 'blue'),
    DropdownMenuItem(child: Text('Green'), value: 'green'),
    DropdownMenuItem(child: Text('Yellow'), value: 'yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: data[index]['color'],
                      ),
                      SizedBox(width: 15),
                      Container(
                        margin: EdgeInsets.only(bottom: 40, left: 10, top: 10),
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index]['title'],
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Detail'),
                        content: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(
                              bottom: 40,
                              left: 10,
                              top: 10,
                            ),
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index]['title'],
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 28,
                                  ),
                                ),
                                Text(
                                  data[index]['platform'],
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  data[index]['lang'],
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          var snackbar = SnackBar(
            content: Text('Add new tech?'),
            action: SnackBarAction(
              label: 'Add',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title: Text('Add new tech'),
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Tech Name',
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Tech Name',
                              ),
                              controller: titleInput,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Tech name is required';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Platform',
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'platform',
                              ),
                              controller: platInput,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Platform is required';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Lang',
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Lang',
                              ),
                              controller: langInput,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Lang is required';
                                }
                                return null;
                              },
                            ),
                            DropdownButtonFormField(
                              items: dd_items,
                              onChanged: (val) {
                                setState(() {
                                  col_selected = val;
                                });
                              },
                            ),
                            ElevatedButton(
                              child: Text('Save'),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    data.add({
                                      "title": titleInput.text,
                                      "platform": platInput.text,
                                      "lang": langInput.text,
                                      "color":
                                          col_selected == 'blue'
                                              ? Colors.blue
                                              : col_selected == 'green'
                                              ? Colors.green
                                              : Colors.yellow,
                                    });
                                    Navigator.of(context).pop();
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
      ),
    );
  }
}
