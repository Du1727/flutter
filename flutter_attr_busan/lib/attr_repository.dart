import 'dart:convert';

import 'package:flutter_attr_busan/attr_dto.dart';
import 'package:http/http.dart' as http;

class AttrRepository {
  static Future<List<AttrDTO>?> getDTO() async{
    final String url = "https://apis.data.go.kr/6260000/AttractionService/getAttractionKr?serviceKey=scKNVREczG9uOg8H%2B6O5WrJJgO7CE9vG%2BGne%2Brw2hRj6jy0csZs%2BJg1uplsi5xlq3Vt2TQ5r0FS2gm2TXBXJkQ%3D%3D&pageNo=1&numOfRows=10&resultType=json";
    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      dynamic json = jsonDecode(response.body);
      return AttrDTO.fromJsonList(json["getAttractionKr"]["item"]);
    }else{
      return null;
    }

  }
}