people = [
  %{name: "Grumpy", height: 1.24},
  %{name: "Dave", height: 1.88},
  %{name: "Dopey", height: 1.32},
  %{name: "Shaquille", height: 2.16},
  %{name: "Sneezy", height: 1.28}
]

for person = %{height: height} <- people, height > 1.5, do: IO.inspect person

# This produces
# %{height: 1.88, name: "Dave"}
# %{height: 2.16, name: "Shaquille"}
