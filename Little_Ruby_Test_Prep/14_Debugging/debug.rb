

# info - see all of the variables and their values at once
require "debug"

def reverse(text)
  return text if text.length == 1
  last_character = text[-1]
  remainder = text[0, text.length - 1]
  debugger
  last_character + reverse(remainder)
end

puts reverse "straw"

use "info" or "i"

C:\Ruby32\bin>ruby debug.rb
[5, 14] in debug.rb
     5|
     6| def reverse(text)
     7|   return text if text.length == 1
     8|   last_character = text[-1]
     9|   remainder = text[0, text.length - 1]
=>  10|   debugger
    11|   last_character + reverse(remainder)
    12| end
    13|
    14| puts reverse "straw"
=>#0    Object#reverse(text="straw") at debug.rb:10
  #1    <main> at debug.rb:14
(rdbg) i    # info command
%self = main
text = "straw"
last_character = "w"
remainder = "stra"
(rdbg)


C:\Ruby32\bin>ruby debug.rb
[5, 14] in debug.rb
     5|
     6| def reverse(text)
     7|   return text if text.length == 1
     8|   last_character = text[-1]
     9|   remainder = text[0, text.length - 1]
=>  10|   debugger
    11|   last_character + reverse(remainder)
    12| end
    13|
    14| puts reverse "straw"
=>#0    Object#reverse(text="straw") at debug.rb:10
  #1    <main> at debug.rb:14
(rdbg) i    # info command
%self = main
text = "straw"
last_character = "w"
remainder = "stra"
(rdbg) c    # continue command
[5, 14] in debug.rb
     5|
     6| def reverse(text)
     7|   return text if text.length == 1
     8|   last_character = text[-1]
     9|   remainder = text[0, text.length - 1]
=>  10|   debugger
    11|   last_character + reverse(remainder)
    12| end
    13|
    14| puts reverse "straw"
=>#0    Object#reverse(text="stra") at debug.rb:10
  #1    Object#reverse(text="straw") at debug.rb:11
  # and 1 frames (use `bt' command for all frames)
(rdbg) i    # info command
%self = main
text = "stra"
last_character = "a"
remainder = "str"
(rdbg) c    # continue command
[5, 14] in debug.rb
     5|
     6| def reverse(text)
     7|   return text if text.length == 1
     8|   last_character = text[-1]
     9|   remainder = text[0, text.length - 1]
=>  10|   debugger
    11|   last_character + reverse(remainder)
    12| end
    13|
    14| puts reverse "straw"
=>#0    Object#reverse(text="str") at debug.rb:10
  #1    Object#reverse(text="stra") at debug.rb:11
  # and 2 frames (use `bt' command for all frames)
(rdbg) i    # info command
%self = main
text = "str"
last_character = "r"
remainder = "st"
(rdbg) c    # continue command
[5, 14] in debug.rb
     5|
     6| def reverse(text)
     7|   return text if text.length == 1
     8|   last_character = text[-1]
     9|   remainder = text[0, text.length - 1]
=>  10|   debugger
    11|   last_character + reverse(remainder)
    12| end
    13|
    14| puts reverse "straw"
=>#0    Object#reverse(text="st") at debug.rb:10
  #1    Object#reverse(text="str") at debug.rb:11
  # and 3 frames (use `bt' command for all frames)
(rdbg) i    # info command
%self = main
text = "st"
last_character = "t"
remainder = "s"
(rdbg) c    # continue command
warts
