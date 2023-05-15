import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async{
  await Supabase.initialize(
    url: "https://voobruzetxiwakmxmubj.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZvb2JydXpldHhpd2FrbXhtdWJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA1NzIzNTIsImV4cCI6MTk5NjE0ODM1Mn0.UFpVxVsf_WFRMSBtqoc_O3ckO3fxyYqXDC7m8le-yE4",
  );
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Supabase.instance.client.from("todo").select().then((value) {
    //   print(value);
    // });

    Supabase.instance.client.from("test").stream(primaryKey: ["idx"]).listen((event){
      print(event);
    });

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: StreamBuilder<List<Map<String, dynamic>>>(
            stream: Supabase.instance.client.from("test").stream(primaryKey: ["idx"]),
            builder: (context, snapshot) {
              return ListView(
                children: snapshot.data?.map((e) => Text(e["content"])).toList() ?? [],
              );
            }
          ),
        ),
      ),
    );
  }
}
