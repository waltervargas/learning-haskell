import System.Environment

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

main :: IO()
main = do
  args <- getArgs
  print $ take (read (head args) :: Int) fibs
