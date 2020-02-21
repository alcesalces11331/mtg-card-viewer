import draftingReducer from './draftingReducer';
import deckReducer from './deckReducer';
import cardReducer from './cardReducer';
import setReducer from './setReducer';
import { combineReducers } from 'redux';

const rootReducer = combineReducers({
    drafts: draftingReducer,
    decks: deckReducer,
    cards: cardReducer,
    sets: setReducer
});

export default rootReducer;