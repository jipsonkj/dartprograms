abstract class Animal {
  void speak();
}
class Lion extends Animal {
  @override
  void speak() {
    print("gir gir!");
  }
}
class Tiger extends Animal {
  @override
  void speak() {
    print("grr grr!");
  }
}
void main() {
  var dog = Lion();
  dog.speak();

  var cat = Tiger();
  cat.speak();
}