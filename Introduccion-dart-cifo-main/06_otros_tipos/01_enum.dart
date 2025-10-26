List<String> cursos = ["Flutter", "Dart", "Figma"];

enum Audio { bajo, medio, alto }

enum Listas { cursos, series, peliculas }

main() {
  Audio audio = Audio.medio;

  switch (audio) {
    case Audio.bajo:
      break;
    case Audio.medio:
      break;
    case Audio.alto:
      break;
  }
}
