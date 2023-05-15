import 'package:flutter/material.dart';
import 'package:flutter_movie_ex/attr_dto.dart';

class AttrItem extends StatelessWidget {
  final AttrDTO attrDTO;

  const AttrItem({Key? key, required this.attrDTO}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text("랭킹 : " + attrDTO.rank),
          Text("영화명 : " + attrDTO.movieNm),
          Text("관객수 : " + attrDTO.auiCnt),
          Text("개봉일 : " + attrDTO.openDt),
        ],
      ),
    );
  }
}
