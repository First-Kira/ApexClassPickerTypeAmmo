characters = [
  "bloodhound", "Gibraltar", "lifeline", "pathfinder", "wraith",
  "bangalore", "caustic", "mirage", "octane", "wattson", "crypto",
  "revenant", "loba", "rampart", "horizon", "fuse", "Valkyrie", "seer",
  "ash", "mad Maggie", "Newcastle", "vantage", "catalyst", "ballistic",
  "conduit", "alter"
]


selected_characters = characters.sample(3)

puts "Randomly selected characters:"
puts selected_characters


players = ['srhoe', 'itzTimmyz', 'Light484']


player_characters = players.zip(selected_characters).to_h

# Display the assignments
player_characters.each do |player, character|
  puts "#{player} is assigned character #{character}"
end

# Define available guns categorized by type
guns = {
  "AR" => ["VK-47 Flatline", "Hemlok Burst AR", "R-301", "Nemesis"],
  "SMG" => ["Alternator", "Prowler", "R-99", "Volt", "CAR"],
  "LMG" => ["Devotion", "L-STAR", "Spitfire", "Rampage"],
  "Marksman" => ["G7 Scout", "Triple Take", "30-30 Repeater", "Bocek Compound Bow"],
  "Sniper" => ["Charge Rifle", "Sentinel", "Longbow", "Kraber"],
  "Shotgun" => ["EVA-8 Auto", "Mastiff", "Mozambique", "Peacekeeper"],
  "Pistol" => ["RE-45", "Wingman", "P2020"]
}

# Function to assign guns to players with specific requirements
def assign_guns_specific(players, guns)
  assignments = {}

  # Assign specific gun types to players
  assignments['srhoe'] = { type: 'Sniper', gun: guns['Sniper'].sample, secondary_gun: guns['Pistol'].sample }
  assignments['itzTimmyz'] = { type: 'SMG', gun: guns['SMG'].sample, secondary_gun: guns['Shotgun'].sample }
  assignments['Light484'] = { type: 'AR', gun: guns['AR'].sample, secondary_gun: guns['LMG'].sample }

  assignments
end

# Assign guns to players with specific types
gun_assignments = assign_guns_specific(players, guns)

# Display the gun assignments
gun_assignments.each do |player, guns|
  puts "#{player} will have a #{guns[:type]} (#{guns[:gun]}) and a #{guns[:secondary_gun]}"
end
