-- count the number of lines, words, and characters in a file

main = interact lineWordCharCount
    where lineWordCharCount input = show "Lines: " ++ show (length (lines input)) ++ "\n" 
                                    ++ show "Words: " ++ show (length (words input)) ++ "\n" 
                                    ++ show "Characters: " ++ show (length (input)) ++ "\n"

