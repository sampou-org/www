module FileTrans where

import Codec.Binary.UTF8.String
import System.Directory

trans :: (String -> String) -> FilePath -> IO ()
trans f fn = readFile fn >>= writeFile fn' . decodeString . f . encodeString >> removeFile fn >> renameFile fn' fn
  where fn' = fn++".tmp"

