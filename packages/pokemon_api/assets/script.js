const fs = require('fs').promises;


async function generateDisplayStr(id) {
    const detailedStr = await fs.readFile('./pokemons/' + id + '.json', 'utf8')
    const detailedPokemon = JSON.parse(detailedStr);

    const pid = detailedPokemon.id
    console.log(pid);
    const name = detailedPokemon.name
    console.log(name);
    const detailedTypes = detailedPokemon.types
    console.log(detailedTypes);
    const types = []
    
    for(let i = 0; i < detailedTypes.length; i++){
        const name = detailedTypes[i].type.name
        console.log(name);
        types.push(name)
    }

    const pokemon = {
        'id' : pid,
        'name': name,
        'types': types,
    }

    const pokemonStr = JSON.stringify(pokemon, null, 4)

    console.log(pokemonStr)
    return pokemonStr

}


async function generateList(){
    await fs.appendFile('./pokemon_display_list.json','{"list": [' );
    for(let i = 1; i <= 1025; i++){
        const str = await generateDisplayStr(i);
        await fs.appendFile('./pokemon_display_list.json', str + ',')
    }
    for(let i = 10001; i <= 10277; i++){
        const str = await generateDisplayStr(i);
        await fs.appendFile('./pokemon_display_list.json', str + ',')
    }

    await fs.appendFile('./pokemon_display_list.json',']}' );
}


// generateDisplayStr(100)
generateList()