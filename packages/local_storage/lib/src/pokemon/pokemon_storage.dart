import 'package:hive_flutter/hive_flutter.dart';

class PokemonStorage {
  PokemonStorage();

  late Box _pokemonBox;
  late Box _simplePokemonListBox;

  Future<void> init() async {
    print("Creating pokemon box...");
    _pokemonBox = await Hive.openBox<String>('pokemon');
    _simplePokemonListBox = await Hive.openBox<String>('_simple_pokemon_list');
  }

  void putSimplePokemonList ( String jsonStr) {
    _simplePokemonListBox.put('simple_pokemon_list', jsonStr);
  }

  String? getSimplePokemonList () {
    return  _simplePokemonListBox.get('simple_pokemon_list');
  }


  void putPokemon(int id, String jsonStr) {
    _pokemonBox.put(id, jsonStr);
  }

  String? getPokemon (int id) {
    return  _pokemonBox.get(id);
  }
}
