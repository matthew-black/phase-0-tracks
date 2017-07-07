# What's in my disc golf bag:

disc_golf_bag = {
  drivers: {
    distance: [
        'Wraith',
        'Krait',
        'Valkyrie',
        'Mamba'
      ],
    fairway: [
        'Firebird',
        'Whippet',
        'TeeBird',
        'River',
        'Leopard3'
      ]
    },
  midrange: [
    'RocX3',
    'Roc3',
    'Comet'
      ],
  putters: {
    driving: [
      'Envy',
      'Proxy'
      ],
    putting: [
      'Wizard'
      ]
    },
  other_stuff: {
      snacks: [
        'Cliff Bar',
        'Swedish Fish',
        'Smoked Almonds'
        ],
      gear: [
        'Mini Disc',
        '1-Liter Nalgene Bottle',
        'Towels',
        'Sharpie'
        ]
    }
}

# Test Calls
puts "Here's what's in my disc golf bag. Yep."
puts " "
puts "Distance Drivers:"
puts disc_golf_bag[:drivers][:distance]
puts " "
puts "Fairway Drivers:"
puts disc_golf_bag[:drivers][:fairway]
puts " "
puts "Midrange Discs:"
puts disc_golf_bag[:midrange]
puts " "
puts "Putters:"
puts disc_golf_bag[:putters][:driving]
puts disc_golf_bag[:putters][:putting]
puts " "
puts "And my all-time favorite disc is:"
puts disc_golf_bag[:midrange][1]