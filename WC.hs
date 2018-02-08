-- file: ch01/WC.hs
-- lines beginning with "--" are comments

main = interact wordCount
        where wordCount input = show (length (lines input)) ++ "\n"

-- to run this program in the console with the quux.txt file
-- runghc WC < quux.txt