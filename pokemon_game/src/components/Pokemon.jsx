import "../assets/css/pokemon.css"
import PropTypes from "prop-types"

const Pokemon = (props) => {
    
    return(
        <div>
        <img src={props.winner} alt="Pokemon" width="400" className="my-5 pokemon-shadow" />
        </div>
    
    )
}

Pokemon.propTypes = {
    winner: PropTypes.string.isRequired
}

export default Pokemon