# when we already know that searching a value which is not present will throw an error. In this case to avoid throwing error and just show a nil value i.e., empty blank row in output we use 'dig'

 data = { "France" => "Paris", "India" => "New Delhi", "England" => "London" }

puts data.dig("France")
p data.dig("India")

data1 = {players: [
        {name: "Oliver", wins: 22},
        {name: "Renu", wins: 23}
    ]}

puts data1.dig(:players, 0, :name)
p data1.dig(:players, 1, :name)
p data1.dig(:players, 2, :name)

#===============================================
# Get the hex_value of the colour blue using dig.
colour_theme = {
    primary_choice: [
        {
          name: "red",
          hex_value: "#ff5555"
        },
        {
          name: "blue",
          hex_value: "#3333ff"
        }
    ],
    fallback: [
      "snow", "gold", "teal"
    ]
}

# Write your code below this

puts colour_theme.dig(:primary_choice, 0, :hex_value)
#==============================================

#Dig in ruby arrays
data = [
  12, ["top", "bottom"], [1, [100, 101]]
]
puts data.dig(2,1,2)
puts data.dig(2,2,1)
puts data.dig(2,1,1)
#============================================


#Get the value 0 in the duration array using dig:
duration = [
  [54, [123, 231]],
  ["high", "low", "mixed"],
  [[4, 10], [99, 0]]
]

# Write your code below this

puts duration.dig(2,1,1)
# ===============================================

