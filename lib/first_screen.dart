import 'package:flutter/material.dart';
import 'book.dart';
List<String> cat = ['tari5', 'fonon', '7ob'];
book b1 = book('kkk', 'm1.jpg', 'asdjasidj', 'tari5');
book b2 = book('777', 'm1.jpg', 'asdjasidj', '7ob');
book b3 = book('ktttt', 'm1.jpg', 'asdjasidj', 'tari5');
book b4 = book('aaaa', 'm.png', 'asdjasidj', 'fonon');
book b5 = book('jkhk', 'm1.jpg', 'asdjasidj', 'tari5');
book b6 = book('khjkhjkhk', 'm1.jpg', 'asdjasidj', 'tari5');
book b7 = book('kkhjkhjkk', 'm1.jpg', 'asdjasidj', 'tari5');
book selectedbook = book('', '', '', '');
class firstscreen extends StatefulWidget {
  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  String dropdownValue = "tari5";
  String bookValue = "";
  List<book> Books = [b1, b2, b3, b4, b5, b6];
  List<String> selectedCategorie = [];

  @override
  void selectedCat() {
    bookValue = "";
    selectedCategorie.clear();
    selectedCategorie.add("");
    for (book b in Books) {
      if (b.categorie == dropdownValue) {
        selectedCategorie.add(b.name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('المكتبة'),
      ),
      drawer: Drawer(
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 40.0,
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, 'second');

                },
                child: Text(
                  'اضافة كتاب',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
      body:  Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Image.asset('images/m.png'),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Material(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('select Categorie'),
                      DropdownButton(
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                            selectedCat();
                          });
                        },
                        items: cat.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Material(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('select book'),
                      DropdownButton(
                        value: bookValue,
                        onChanged: (String newValue) {
                          setState(() {
                            bookValue = newValue;
                            for (book i in Books) {
                              if (i.name == bookValue) {
                                selectedbook = i;
                              }
                            }
                          });
                        },
                        items: selectedCategorie
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
            flex: 2,
            child: Text(
              selectedbook.name,
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              selectedbook.details,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset('images/${selectedbook.imagename}'),
            ),
          ),
          Material(
            elevation: 5.0,
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
              onPressed: () {},
              minWidth: 200.0,
              height: 42.0,
              child: Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
