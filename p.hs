{-# LANGUAGE Safe #-}
{-# LANGUAGE PatternGuards #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- import prelude and use it wilfuly
import qualified Prelude as P

data F = A|B

f :: F -> P.String
f x = case x of
  A -> "ala ma kota"
  B -> "ala nie ma kota"

main :: P.IO ()
main = P.putStrLn "What is your name: " P.>> (P.getLine P.>>= (\name -> P.putStrLn name))


-- http://dev.stephendiehl.com/hask/
