abstract class Animal {} //clase primaria

abstract class Mamifero extends Animal {} //subclases

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract mixin class Volador {
  void volar() => print("Estoy volando");
}

abstract mixin class Caminante {
  void caminar() => print("Estoy caminando");
}

abstract mixin class Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamifero with Nadador {
  @override
  void nadar() {
    super.nadar();
  }
}

class Murcielago extends Mamifero with Caminante, Volador {
  @override
  void caminar() {
    super.caminar();
  }

  @override
  void volar() {
    super.volar();
  }
}

class Gato extends Mamifero with Caminante {
  @override
  void caminar() {
    super.caminar();
  }
}

class Pato extends Ave with Caminante, Nadador, Volador {
  @override
  void caminar() {
    super.caminar();
  }

  @override
  void nadar() {
    super.nadar();
  }

  @override
  void volar() {
    super.volar();
  }
}

class Tiburon extends Pez with Nadador {
  @override
  void nadar() {
    super.nadar();
  }
}

class PezVolador extends Pez with Nadador, Volador {
  @override
  void nadar() {
    super.nadar();
  }

  @override
  void volar() {
    super.volar();
  }
}

void main() {
  print("Delfin");
  final delfin = Delfin();
  delfin.nadar();

  print("Gato");
  final cat = Gato();
  cat.caminar();

  print("Murcielago");
  final murcielago = Murcielago();
  murcielago.caminar();
  murcielago.volar();

  print("Pato");
  final pato = Pato();
  pato.volar();
  pato.caminar();
  pato.nadar();

  print("Tiburon");
  final tiburon = Tiburon();
  tiburon.nadar();

  print("Pez Volador");
  final pezVolador = PezVolador();
  pezVolador.nadar();
  pezVolador.volar();
}
