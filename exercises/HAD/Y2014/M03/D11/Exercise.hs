module HAD.Y2014.M03.D11.Exercise where

import Data.Char

-- | lcAlphabetFrom
-- Display the alaphabet in lower cas, starting from the letter given in
-- parameter.
-- If the parameter is not a lowercase letter, displays the alphabet from 'a'
--
-- Point-free is quite easy
--
-- Examples:
--
-- >>> lcAlphabetFrom 'a'
-- "abcdefghijklmnopqrstuvwxyz"
--
-- >>> lcAlphabetFrom 'e'
-- "efghijklmnopqrstuvwxyzabcd"
--
-- >>> lcAlphabetFrom '`'
-- "abcdefghijklmnopqrstuvwxyz"
--
-- >>> lcAlphabetFrom '{'
-- "abcdefghijklmnopqrstuvwxyz"

lcAlphabetFrom :: Char -> String
lcAlphabetFrom = take 26 . (flip drop) (cycle ['a'..'z']) . (min 26) . (flip (-) 97 ) . ord
