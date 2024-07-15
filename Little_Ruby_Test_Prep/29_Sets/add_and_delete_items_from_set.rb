# The add method adds an element to the set
# The delete method removes an element from the set
# Both methods return the Set itself

require "set"

plays = Set.new(["Romeo and Juliet", "Hamlet"])
p plays
p plays.class

p plays.add("King Lear")
p plays.add("King Lear")
p plays.add("King Lear")

p plays.delete("Hamlet")
p plays.delete("Hamlet")
p plays.delete("Hamlet")

