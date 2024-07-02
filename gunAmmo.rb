# List of characters
characters = [
  "bloodhound", "Gibraltar", "lifeline", "pathfinder", "wraith",
  "bangalore", "caustic", "mirage", "octane", "wattson", "crypto",
  "revenant", "loba", "rampart", "horizon", "fuse", "Valkyrie", "seer",
  "ash", "mad Maggie", "Newcastle", "vantage", "catalyst", "ballistic",
  "conduit", "alter"
]

# Randomly select 3 characters
selected_characters = characters.sample(3)

puts "Randomly selected characters:"
puts selected_characters

# Define players
players = ['srhoe', 'itzTimmyz', 'Light484']

# Assign selected characters to players
player_characters = players.zip(selected_characters).to_h

# Display the assignments
player_characters.each do |player, character|
  puts "#{player} is assigned character #{character}"
end

# Define available guns categorized by color
guns = {
  blue: ['Sentinel', 'Longbow', 'Charge Rifle'],
  red: ['Peacekeeper', 'Mozambique', 'Mastiff', 'EVA-8 Auto'],
  brown: ['RE-45', 'R-301', 'R-99', 'P2020', 'Spitfire', 'G7 Scout', 'Alternator', 'CAR'],
  yellow: ['Devotion', 'Havoc', 'Nemesis', 'Triple Take', 'Volt'],
  green: ['30-30 Repeater', 'Hemlock', 'Rampage', 'Flatline', 'CAR']
}

# Function to assign guns to players
def assign_guns(players, guns)
  assignments = {}

  players.each do |player|
    primary_color = guns.keys.sample
    secondary_color = guns.keys.sample

    primary_gun = guns[primary_color].sample
    secondary_gun = guns[secondary_color].sample

    assignments[player] = { primary_color: primary_color, primary: primary_gun, secondary_color: secondary_color, secondary: secondary_gun }
  end

  assignments
end

# Assign guns to players
gun_assignments = assign_guns(players, guns)

# Display the gun assignments
gun_assignments.each do |player, guns|
  puts "#{player} will have #{guns[:primary_color]} ammo type and #{guns[:secondary_color]} ammo type (#{guns[:primary]} and #{guns[:secondary]})"
end
