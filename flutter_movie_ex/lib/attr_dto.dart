class AttrDTO {
  String rank;
  String auiCnt;
  String movieNm;
  String openDt;

  AttrDTO({
    required this.rank,
    required this.auiCnt,
    required this.movieNm,
    required this.openDt,
  });

  factory AttrDTO.fromJson(dynamic json) => AttrDTO(
        rank: json["rank"],
        auiCnt: json["audiCnt"],
        movieNm: json["movieNm"],
        openDt: json["openDt"],
      );

  static List<AttrDTO> fromJsonList(List jsonList){
    return jsonList.map((e) => AttrDTO.fromJson(e)).toList();
  }
}
