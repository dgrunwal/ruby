# freeze - make it immutable

name = "Boris".freeze
hobbies = ["Coding", "Sushi"].freeze

# name << " the Genius"
# hobbies << "Winning"
# name.upcase!

name_dup = name.dup
name_dup << " the Genius"
p name_dup

hobbies_dup = hobbies.dup
hobbies_dup << "Winning"
p hobbies_dup

name_clone = name.clone
# name_clone << " the Genius"

hobbies_clone = hobbies.clone
# hobbies_clone << "Winning"