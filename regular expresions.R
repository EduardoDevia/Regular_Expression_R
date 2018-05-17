#grepl & grep

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("edu",emails)

# Use grep() to match for "edu", save result to hits
hits<-grep("edu",emails)

# Subset emails using hits

emails[hits]

#grepl(), which returns TRUE when a pattern is found in the corresponding character string.
#grep(), which returns a vector of indices of the character strings that contains the pattern.

#"@.*\\.edu$"
#@, because a valid email must contain an at-sign.
#.*, which matches any character (.) zero or more times (*). Both the dot and the asterisk are metacharacters. You can use them to match any character between the at-sign and the ".edu" portion of an email address.
#\\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: it tells R that you want to use the . as an actual character.
.*: A usual suspect! It can be read as "any character that is matched zero or more times".
#\\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a metacharacter.
#[0-9]+: Match the numbers 0 to 9, at least once (+).
#([0-9]+): The parentheses are used to make parts of the matching string available to define the replacement. The \\1 in the replacement argument of sub() gets set to the string that is captured by the regular expression [0-9]+.
