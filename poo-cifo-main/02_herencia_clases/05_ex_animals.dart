abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Walk {}
mixin Swim {}
mixin Fly {}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Walk, Fly {}

class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Walk, Fly, Swim {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Fly, Swim {}

void main() {}
