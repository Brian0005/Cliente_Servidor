import Pokemon from "./Pokemon"
import PokemonButton from "./pokemonButton";



const selectRandomPokemon = (max) => {
    return Math.floor(Math.random() * max);
}



const Main = () => {

    
    const pokemonList = fetch("http://localhost:3000/pokemon/play")
        .then(res => res.json())

        const pokemonWinner = selectRandomPokemon(pokemonList.length); 

    return(
        <main>
        <hr/>
        <div className="text-center">
        <Pokemon winner={pokemonList[pokemonWinner].image}/>
        </div>
        <hr/>
        <div className="row gx-2, text-center">
            {
                pokemonList.map((option, index) => (
                    <PokemonButton option={option} isWinner={pokemonWinner === index} pokemonWinner={pokemonWinner} key={option.pokemon}/>
                ))
            }
        
        </div>
        </main>
    )
}

export default Main