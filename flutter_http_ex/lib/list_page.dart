// list_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_1/post_dto.dart';
import 'package:flutter_http_1/post_repository.dart';

class ListPage extends HookWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState = useState<List<PostDTOTable>?>(null);
    useEffect(() {
      PostRepository.instance.getDTOList().then((value){
        listState.value = value;
      });
    }, []);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: listState.value?.map((e) => ListItem(postDTOTable: e)).toList() ?? [],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  PostDTOTable postDTOTable;

  ListItem({Key? key, required this.postDTOTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        children: [
          Text("번호 : ${postDTOTable.id}"),
          Divider(),
          Text("이름 : ${postDTOTable.name}"),
          Divider(),
          Text("아이디 : ${postDTOTable.userName}"),
          Divider(),
          Text("이메일 : ${postDTOTable.email}"),
          Divider(),
          Text("전화번호 : ${postDTOTable.phone}"),
          Divider(),
          Text("사이트 : ${postDTOTable.website}"),
        ],
      ),
    );
  }
}