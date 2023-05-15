/*

  List 타입의 대표적 메소드
  add: 요소를 추가한다.
  remove: 요소를 제거한다.
  clear: 모든 요소를 제거한다.
  insert: 인덱스를 통해 요소를 추가한다.
  indexOf: 요소의 인덱스를 반환한다.
  sort: 요소를 정렬한다.
  shuffle: 요소를 랜덤하게 섞는다.
  reverse: 요소를 역순으로 정렬한다.
  join: 요소를 문자열로 합친다.
  split: 문자열을 요소로 분리한다.
  forEach: 요소를 반복한다.
  map: 요소를 변환한다.
  where: 조건에 맞는 요소를 반환한다. (filter)
  any: 조건에 맞는 요소가 있는지 확인한다.
  every: 모든 요소가 조건에 맞는지 확인한다.
  isEmpty: 요소가 비어있는지 확인한다.
  isNotEmpty: 요소가 비어있지 않은지 확인한다.
  contains: 요소가 포함되어 있는지 확인한다.

 */

import 'dart:math';

void main(List<String> args) {
  List tempList1 = [3, 2, 1];

  // 문제 1. add를 이용해서 4를 추가하고 출력하시오.
  tempList1.add(4);
  print(tempList1);
  // 문제 2. remove를 이용해서 2를 제거하고 출력하시오.
  tempList1.remove(2);
  print(tempList1);
  // 문제 3. insert를 이용해서 1번 인덱스에 4를 추가하고 출력하시오.
  tempList1.insert(0, 4);
  print(tempList1);
  // 문제 4. indexOf를 이용해서 3의 인덱스를 출력하시오.

  print(tempList1.indexOf(3));
  // 문제 5. sort를 이용해서 tempList1을 정렬하고 출력하시오.
  tempList1.sort((a, b) => a - b);
  print(tempList1);

  // 문제 6. shuffle를 이용해서 tempList1을 랜덤하게 섞고 출력하시오.
  tempList1.shuffle(Random());
  print(tempList1);

  // 문제 7. reverse를 이용해서 tempList1을 역순으로 정렬하고 출력하시오.
  print("7번");

  print(tempList1.reversed);

  // 문제 8. join을 이용해서 tempList1을 문자열로 합치고 출력하시오.
  print("8번");
  tempList1.join();
  print(tempList1);

  // 문제 9. split을 이용해서 문자열을 tempList1로 분리하고 출력하시오.
  print("9번");
  String str = "1,2,3";
  str.split("");
  print(str);

  // 문제 10. map을 이용해서 tempList1의 요소를 2배로 만들고 출력하시오.
  print("10번");
  print(tempList1.map((e) => e * 2));

  // 문제 11. where를 이용해서 tempList1의 짝수만 출력하시오.
  print("11번");
  print(tempList1.where((e) => e % 2 == 0));

  // 문제 12. forEach를 이용해서 tempList1의 요소를 반복하고 출력하시오.
  print("12번");
  tempList1.forEach(print);

  // 문제 13. any를 이용해서 tempList1에 3이 있는지 확인하고 출력하시오.
  print("13번");
  print(tempList1.any((e) => e == 3));

  // 문제 14. every를 이용해서 tempList1의 모든 요소가 3보다 작은지 확인하고 출력하시오.
  print("14번");
  print(tempList1.every((e) => e < 3));

  // 문제 15. isEmpty를 이용해서 tempList1이 비어있는지 확인하고 출력하시오.
  print("15번");
  print(tempList1.isEmpty);

  // 문제 16. contains를 이용해서 tempList1에 3이 있는지 확인하고 출력하시오.
  print("16번");
  print(tempList1.contains(3));
}
