import 'dart:convert';

import 'package:local_storage/local_storage.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_mobile/pokemon_repository/src/models/pokemon_models/pokemon.dart';
import 'package:pokedex_mobile/pokemon_repository/src/models/pokemon_models/simple_pokemon.dart';
import 'package:pokemon_api/pokemon_api.dart';

class PokemonRepository {
  PokemonRepository._();
  static final instance = PokemonRepository._();
  final logger = Logger();

  final PokemonApi _client = PokemonApi.instance;
  bool _initialized = false;
  late LocalStorage _localStorage;
  late List<SimplePokemon> simplePokemonList;

  Future<void> init() async {
    if (!_initialized) {
      _localStorage = LocalStorage();
      await _localStorage.init();
      await _loadSimplePokemonList();

      _initialized = true;
    }
  }

  Future<void> _loadSimplePokemonList() async {
    String? data = _localStorage.pokemonStorage.getSimplePokemonList();
    if (data == null) {
      logger.d('no data');
      data = await _client.getSimplePokemopnList();
      _localStorage.pokemonStorage.putSimplePokemonList(data);
    } else {
      logger.d('has data');
    }

    final map = jsonDecode(data) as Map<String, dynamic>;
    final list = map['list'] as List<dynamic>;
    simplePokemonList = list.map((e) => SimplePokemon.fromJson(e)).toList();
    logger.d('length: ${simplePokemonList.length}');
  }

  Future<Pokemon> getPokemonById(int id) async {
    String? data = _localStorage.pokemonStorage.getPokemon(id);
    if (data == null) {
      logger.d('no data');
      data = await _client.getPokemonById(id);
      _localStorage.pokemonStorage.putPokemon(id, data);
    } else {
      logger.d('has data');
    }

    final pokemon = Pokemon.fromJson(jsonDecode(data));
    return pokemon;
  }
}
