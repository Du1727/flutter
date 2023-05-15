import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_movie_ex/attr_dto.dart';
import 'package:flutter_movie_ex/attr_item.dart';
import 'package:flutter_movie_ex/attr_repository.dart';

class AttrPage extends HookWidget {
  const AttrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState = useState<List<AttrDTO>>([]);

    useEffect((){
      AttrRepository.getDTO().then((value){
        listState.value = value ?? [];
      });
    },[]);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: listState.value.map((e) => AttrItem(attrDTO: e)).toList(),

        ),
      ),
    );
  }
}
