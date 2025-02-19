--- STEAMODDED HEADER
--- MOD_NAME: NegativePolychromeProbUp
--- MOD_ID: NegativePolychromeProbUp
--- MOD_AUTHOR: [dewat fungi1784]
--- MOD_DESCRIPTION: Ups Negative and PolyChrome Joker Spawn Probablity

--------------------------------
------------MOD CODE------------

function poll_edition(_key, _mod, _no_neg, _guaranteed)
    _mod = _mod or 1
    local edition_poll = pseudorandom(pseudoseed(_key or 'edition_generic'))
    if _guaranteed then
        if edition_poll > 1 - (0.25*1) and not _no_neg then
            return {negative = true}
        elseif edition_poll > 1 - (0.25*2) then
            return {polychrome = true}
        elseif edition_poll > 1 - (0.25*3) then
            return {holo = true}
        elseif edition_poll > 1 - (0.25*4) then
            return {foil = true}
        end
    else
        if edition_poll < 0.1 and not _no_neg then
            return {negative = true}
        elseif edition_poll < 0.2 then
            return {polychrome = true}
        elseif edition_poll < 0.22 then
            return {holo = true}
        elseif edition_poll < 0.26 then
            return {foil = true}
        end
    end
    return nil
end
--------------------------------
------------CODE END------------
