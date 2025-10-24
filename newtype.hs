newtype Html = Html string

newtype Structure = Structure string

getStructureString :: Structure -> String
getStructureString struct = 
    case struct of
        Structure str -> str

getStructureString2 :: Structure -> String
getStructureString2 (Structure str) = str