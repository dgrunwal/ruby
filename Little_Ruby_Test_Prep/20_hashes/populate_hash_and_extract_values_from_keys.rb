# Hash key-value assignment syntax
# key => value
# hash rocket

nfl_roster_salaries = {
  "Patrick Mahomes" => 50_000_000,
  "Josh Allen" => 25_000_000,
  "Joe Burrow" => 12_000_000,
}

p nfl_roster_salaries

nfl_roster = {
  "Kansas City Chiefs" => ["Patrick Mahomes", "Travis Kelce"],
  "Los Angeles Rams" => ["Matthew Stafford", "Aaron Donald", "Cooper Kupp"]
}
p nfl_roster

p nfl_roster_salaries["Patrick Mahomes"]
p nfl_roster_salaries["Joe Burrow"]
p nfl_roster["Los Angeles Rams"]
p nfl_roster_salaries["Tom Brady"]
p nfl_roster_salaries["patrick Mahomes"]

puts

p nfl_roster_salaries.fetch("Josh Allen", 0)
p nfl_roster_salaries.fetch("Josh Nonsense", 0)