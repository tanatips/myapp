import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';

class SqliteDatabaseScreen extends StatefulWidget {
  const SqliteDatabaseScreen({ Key? key }) : super(key: key);

  @override
  _SqliteDatabaseScreenState createState() => _SqliteDatabaseScreenState();
}

class _SqliteDatabaseScreenState extends State<SqliteDatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kSqliteDatabase),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}