/*

  함수

  https://dart.dev/guides/language/language-tour#functions

  리턴값이 없는 함수
  void add(int a, int b) {
    print(a + b);
  }

  리턴값이 있는 함수
  int add(int a, int b) {
    return a + b;
  }

  또는

  var add = (int a, int b) {
    return a + b;
  };


  화살표 함수
  Function(int, int) add = (int a, int b) => a + b;

  또는
  Function add = (int a, int b) => a + b;

  또는
  var add = (int a, int b) => a + b;
  
 */

// 문제 1. "안녕하세요." 를 출력하는 함수를 만드시오.
void prnt() {
  print("안녕하세요.");
}

// 문제 2. 두 수를 곱하는 함수를 만드시오.
Function multi = (int a, int b) => a * b;

// 문제 3. 두 수를 빼는 화살표 함수를 만드시오.
Function sub = (int a, int b) => a - b;

void main(List<String> args) {
  prnt();

  print(multi(2, 3));

  print(sub(5, 1));
}
