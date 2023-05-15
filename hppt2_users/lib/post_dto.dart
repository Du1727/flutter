
// 테이블용
class PostDTOTable {
  int id;      // 글 번호
  String name;
  String email;

  PostDTOTable({required this.id, required this.name, required this.email}); //제목



}


// 상세 페이지용
class PostDTODetail{
  int id;      // 글 번호
  String name;
  String email;

  PostDTODetail({required this.id, required this.name, required this.email});
}