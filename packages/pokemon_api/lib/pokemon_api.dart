library pokemon_api;

import 'package:flutter/services.dart';


class PokemonApi {
  PokemonApi._();
  static final instance = PokemonApi._();

  Future<String> getPokemonById(int id) async {
    final jsonStr = await rootBundle
        .loadString('packages/pokemon_api/assets/pokemons/$id.json');
    return jsonStr;
  }

  Future<String> getSimplePokemopnList() async {
    final jsonStr = await rootBundle
        .loadString('packages/pokemon_api/assets/simple_pokemons.json');
    return jsonStr;
  }
}
