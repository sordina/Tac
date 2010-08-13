{--
 - This serves as an implementation of the tac system command.
 - It is immaterial weather interact waits for full input, or
 - processes a line at a time as reverse needs all lines anyway.
 - 
 - On seccond thought, this isn't entirely true.
 - Memory usage and processing can be reduced by processing each
 - line as it is recieved.
--}

import System.Environment (getArgs)

tac :: IO ()
tac = interact $ unlines . reverse . lines

help :: IO ()
help = putStrLn "This reverses lines of input. Use it in a pipeline."

main :: IO ()
main = do
  args <- getArgs

  if "--help" `elem` args
    then help
    else tac
