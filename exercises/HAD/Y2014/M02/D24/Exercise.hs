module HAD.Y2014.M02.D24.Exercise where

import Data.List

-- | Filter a list, keeping an element only if it is equal to the next one.
--
-- Examples:
-- >>> filterByPair []
-- []
-- >>> filterByPair [1 .. 10]
-- []
-- >>> filterByPair [1, 2, 2, 2, 3, 3, 4]
-- [2,2,3]

filterByPair :: Eq a => [a] -> [a]
filterByPair = (>>= init).group
