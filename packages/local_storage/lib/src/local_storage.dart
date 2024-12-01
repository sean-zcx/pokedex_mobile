library local_storage;

import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage/src/pokemon/pokemon.dart';

class LocalStorage {
  late PokemonStorage pokemonStorage;
  bool _initialized = false;

  LocalStorage() {
    pokemonStorage = PokemonStorage();
  }

  Future<void> init() async {
    if (!_initialized) {
      print('Initializing local storage...');
      await Hive.initFlutter();
      print('init hive done ');
      await pokemonStorage.init();
      print('Initialization local storage done');

      _initialized = true;
    } else {
      print('Local storage has already initialized.');
    }
  }
}
