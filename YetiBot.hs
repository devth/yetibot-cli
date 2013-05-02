import Data.List
import Network.HTTP
import System.Environment
import System.IO

main :: IO ()
main = do
    base <- getEnv "YETIBOT_ENDPOINT"
    args <- getArgs
    -- optionally read in stdin only if it was piped (i.e. if it's not a terminal
    -- device)
    contents <- hIsTerminalDevice stdin >>= \isT -> if isT then return "" else getContents
    let url = endpoint base $ intercalate " " $ args ++ [contents]
    resp <- simpleHTTP (postRequest url) >>= getResponseBody
    putStrLn resp

endpoint :: String -> String -> String
endpoint base = ((base ++ "/api?command=") ++) . urlEncode
