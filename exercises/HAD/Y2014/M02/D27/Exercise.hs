module HAD.Y2014.M02.D27.Exercise where

comp :: Integral a => a -> a -> Maybe a
comp b a 
  | (mod a b) == 0 = Just (div a b)
  | otherwise =Nothing

-- | Divide all the elements of the list (2nd parameter) by the first parameter
-- iff all the elements of the lists are exact multiple of it
-- returns nothing otherwise 
--
-- Examples:
--
-- >>> divIfMultiple 3 [3, 6 .. 12]
-- Just [1,2,3,4]
-- >>> divIfMultiple 2 [3, 6 .. 12]
-- Nothing
--
divIfMultiple :: Integral a => a -> [a] -> Maybe [a]
divIfMultiple x = sequence . map (comp x)
