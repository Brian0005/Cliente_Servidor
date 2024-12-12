import confetti from "canvas-confetti"
import PropTypes from "prop-types"

const handleClickButton = (isWinner) => {

    if (isWinner) {
        alert("You Won!");
    confetti({
        particleCount: 250,
    });
    
    return;
    }
    alert("You Lost!")
}

const PokemonButton = ({option, isWinner}) => {
    return(
        <div className="col-4">
        <button className="btn btn-primary px-4" onClick= {() => handleClickButton(isWinner)}>{option.pokemon}</button>
        </div>
    )
}

PokemonButton.propTypes = {
    option: PropTypes.objet.isRequired,
    isWinner: PropTypes.bool.isRequired
}

export default PokemonButton;