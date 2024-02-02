import 'package:flutter/material.dart';
 
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int id = 0;
  var txtName = TextEditingController();
  var txtAge = TextEditingController();
   late List<Dog> data;
  var database;
  @override
  void initState() {
    data=[];
    initOpenDatabase();
    super.initState();
  }
  initOpenDatabase() async{
    WidgetsFlutterBinding.ensureInitialized();
     var path = await getDatabasesPath();
     print("=====>path:$path");
     database = openDatabase(
      join(path, 'doggie_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
        );
      },
      version: 1,
    );
    loadData();
  }
  loadData() async{
    List<Dog> myDog = await dogs();
    if(myDog.length==0){
      for(var i=1;i<=2;i++){
        var fido = Dog(
          id: i,
          name: 'Fido-'+i.toString(),
          age: 2+i,
        );
        await insertDog(fido);
      }
    }
    myDog = await dogs();
    
    myDog.forEach((element) {
      print("${element.id} ${element.name} ${element.age}");
    });
    setState(() {
       this.data = myDog;
    });
  }
  Future<void> insertDog(Dog dog) async {
  // Get a reference to the database.
  final db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'dogs',
    dog.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  Future<void> deleteDog(int id) async {
  // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'dogs',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }
  Future<void> updateDog(Dog dog) async {
  // Get a reference to the database.
  final db = await database;

  // Update the given Dog.
  await db.update(
    'dogs',
    dog.toMap(),
    // Ensure that the Dog has a matching id.
    where: 'id = ?',
    // Pass the Dog's id as a whereArg to prevent SQL injection.
    whereArgs: [dog.id],
  );
}
  Future<List<Dog>> dogs() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('dogs');

    this.data = List.generate(maps.length, (i) {
      return Dog(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return this.data;
  }
  @override
  Widget build(BuildContext context) {
    return  
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.grey
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                    child: TextFormField(
                      controller: txtName,
                      decoration: InputDecoration(
                        hintText: "ชื่อสุนัข",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.grey
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                    child: TextFormField(
                      controller: txtAge,
                      decoration: InputDecoration(
                        hintText: "อายุ",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () async{
                print("id:${this.data.length}");
                print("name:${this.txtName.text}");
                print("age:${this.txtAge.text}");
                
                if(this.id==0){
                  var fido = Dog(
                      id: ((this.data[this.data.length-1].id)+1),
                      name: this.txtName.text,
                      age: int.parse(this.txtAge.text)
                    );
                    await insertDog(fido);
                }
                else {
                  var fido = Dog(
                      id: this.id,
                      name: this.txtName.text,
                      age: int.parse(this.txtAge.text)
                    );
                    await updateDog(fido);
                }
                loadData();
                this.id=0;
                this.txtName.clear();
                this.txtAge.clear();
              }, 
              child: Text("บันทึก")),
              Expanded(
                child: ListView.builder(
                itemCount: this.data.length,
                itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    this.txtName.text = this.data[index].name.toString();
                    this.txtAge.text = this.data[index].age.toString();
                    this.id = this.data[index].id;
                  },
                  onDoubleTap: () async{
                    print(index);
                    print(this.data[index]);
                    await deleteDog(this.data[index].id);
                    loadData();
                  },
                  child: ListTile(
                    title:Text("${this.data[index].id.toString()}  ${this.data[index].name.toString()} ${this.data[index].age.toString()}")
                  ),
                );
        }),
              ),
            ],
          );
  }
}
class Dog {
  final int id;
  final String name;
  final int age;

  Dog({
    required this.id,
    required this.name,
    required this.age,
  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }
  @override
  String toString() {
    return 'Dog{id: $id, name: $name, age: $age}';
  }
}