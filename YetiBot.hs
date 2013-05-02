import Data.List
import Network.HTTP
import System.Environment
import System.IO

main :: IO ()
main = do
    base <- getEnv "YETIBOT_ENDPOINT"
    token <- getEnv "YETIBOT_ACCESS_TOKEN"
    args <- getArgs
    -- optionally read in stdin only if it was piped (i.e. if it's not a terminal
    -- device)
    contents <- hIsTerminalDevice stdin >>= \isT -> if isT then return "" else getContents
    let url = endpoint base token $ intercalate " " $ args ++ [contents]
    resp <- simpleHTTP (postRequest url) >>= getResponseBody
    putStrLn resp

endpoint :: String -> String -> String -> String
endpoint base token = ((base ++ "/api?token=" ++ token ++ "command=") ++) . urlEncode
