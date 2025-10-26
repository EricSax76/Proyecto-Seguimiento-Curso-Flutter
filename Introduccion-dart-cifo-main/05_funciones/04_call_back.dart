void main() {
  obternerUser(
    id: '100adfs',
    onTap: (Map persona) {
      print(persona);
    },
    onDoubleTap: null,
  );
}

void obternerUser({
  required String id,
  required Function onTap,
  Function? onDoubleTap,
}) {
  Map usuario = {'id': id};

  onTap(usuario);
}
