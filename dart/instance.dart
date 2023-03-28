// instance.dart

class Cat {
  // 필드 - 객체의 데이터
  String name;
  // 메소드 - 객체의 기능
  void say() {
    print("야옹");
  }

  // 생성자 - 객체를 생성하는 함수
  Cat(this.name);
}

void main(List<String> args) {
  Cat cat;
  new Cat("나비");
}
