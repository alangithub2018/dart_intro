void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://www.mirul.com/item');
    print('exito: ${value}');
  } on Exception catch (err) {
    print('Tenemos una Exception: ${err}');
  } catch (err) {
    print('OOPs!! algo terrible paso: ${err}');
  } finally {
    print('fin del try y catch');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  throw Exception('No hay parametros en el URL');
  //throw 'Error en la peticion';

  //return 'Tenemos un valor de la peticion';
}
