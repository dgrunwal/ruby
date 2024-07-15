voicemail = 'I can be reached at 555-123-4567 or regexman@gmail.com'

# Any digit (0 through 9)
p voicemail.scan(/\d/)

# Plus sign -> 1 or more digits in a row
p voicemail.scan(/\d+/)

# {} - An exact number of digits
p voicemail.scan(/\d{3}/)
p voicemail.scan(/\d{4}/)

# 3 or more consecutive digits in a row
p voicemail.scan(/\d{3,}/)

# Between 2 and 3 consecutive digits in a row
p voicemail.scan(/\d{2,3}/)