character_1 = {
  name: "Mario",
  body_structure: "Short Fat",
  clothing: [
      "Red Hats",
      "Overalls",
      ":{"
      ],
  health: 100,
  damage: 2,
}
character_2 = {
  name: "Snips",
  body_structure: "Short long lanky",
  clothing: [
      "Fur Armor",
      "Cow Costume",
      ":]"
      ],
  health: 1000,
  damage: 20,
}
character_3 = {
  name: "Bob",
  body_structure: "Huge. Muscles. Everywhere.",
  clothing: [
      "Canadian Tuxedo",
      "Denim for lyfe yo",
      ":|"
      ],
  health: 50,
  damage: 1,
}

char_array = [character_1, character_2, character_3]
combat_1 = char_array.shuffle![0]
combat_2 = char_array[1]

def check_win char1, char2
  if char1[:health] > 0
    puts char1[:name] + " Wins!"
  else
    puts char2[:health] + " Wins!"
  end
end

while ( combat_1 [:health] > 0) && (combat_2[:health] > 0)
  puts combat_1[:name], combat_1[:health]
  puts combat_2[:name], combat_2[:health]
    combat_1[:health] -= combat_2[:damage]
    combat_2[:health] -= combat_1[:damage]
    # When Health is <= 0, display "person wins"

end
check_win( combat_1, combat_2)
