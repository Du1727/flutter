class PostDTOTable {
  int id;
  String name;
  String userName;
  String email;
  String phone;
  String website;

  PostDTOTable({required this.id,required this.name,required this.userName,required this.email,required this.phone,required this.website});

  // 펙토리
  // 생성자를 통해서 객체를 만들려고 하는데
  // 자리가 번거로울 경우
  // 어떠한 타입을 받아서 클래스 내부에서 객체를 생성해서
  // 리턴 해주기 위함

  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
      id: json["id"],
      name: json["name"],
      userName: json["username"],
      email: json["email"],
      phone: json["phone"],
      website: json["website"],
  );

  static List<PostDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => PostDTOTable.fromJson(json)).toList();
  }

}

class PostDTODetail{
  int userId;
  int id;
  String title;
  String body;

  PostDTODetail(
    {required this.userId,
    required this.id,
    required this.title,
    required this.body,});
}

class Company {
  String name;

  Company({required this.name});
}

void main(List<String> args) {
  List arr = ["apple", "naver", "google"];

  // 요청사항이 들어옴
  // Company 타입의 배열로 만들어주세요

  // 1번 방식 - 수작업 (요소가 많을 경우 너무 오래걸림)
  List<Company> newArr1 = [
    Company(name: "apple"),
    Company(name: "naver"),
    Company(name: "google"),
  ];

  // // 2번 방식 - 새 리스트 만들고 반복문으로 넣어주기
  List<Company> newArr2 = List.empty(growable: true);

  for (var i = 0; i < arr.length; i++) {
    newArr2.add(Company(name: arr[i]));
  }

  // 3번 방식 - map 사용
  // map은 매개변수로 받은 함수 (item) => Company(name: item) 를 이용해서
  // 각 요소들을 String -> Company 타입으로 변경
  List<Company> newArr3 = arr.map((item) => Company(name: item)).toList();
}
