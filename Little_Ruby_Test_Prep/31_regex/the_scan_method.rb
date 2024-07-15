# scan method - find all occurrences of a RegEx search pattern

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

p voicemail.scan(/e/)

p voicemail.scan(/re/)

p voicemail.scan(/[re]/)