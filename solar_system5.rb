class SolarSystem
  attr_reader :name, :planets

  #initialize class Solar_systen
  def initialize(name, planets = [])
    @name = name
    @planets = planets
  end

  #def method to add multiple planets in an array
  def add_planets(new_planet_array)
    @planets.concat(new_planet_array)
  end

  #def method to display planet info in solar system
  def display_planets
    @planets.each do |name|
      name.all_data
    end
  end
end

#create class Planet
class Planet
  attr_reader :name, :mass, :distance_from_the_sun, :diameter, :moons, :atmosphere
  #initialize class planet
  def initialize(planet_hash)
    @name = planet_hash[:name]
    @mass = planet_hash[:mass]
    @distance_from_the_sun = planet_hash[:distance_from_the_sun]
    @diameter = planet_hash[:diameter]
    @moons = planet_hash[:moons]
    @atmosphere = planet_hash[:atmosphere]
  end
  #define method to output data in neat format
  def all_data
    puts "The planet #{@name} has a mass of #{@mass} kg and diameter of #{@diameter} km."
    puts "It is #{@distance_from_the_sun} km from the sun and has #{@moons} moons."
    puts "Its main atmospheric gas is #{@atmosphere}."
  end

  def puts_name
    puts "#{name.capitalize}"
  end
end


planets = [
  mercury_hash = {
    name: "Mercury",
    mass: 5839,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 2,
    atmosphere: "none"
  },
  venus_hash = {
    name: "Venus",
    mass: 8923,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 5,
    atmosphere: "oxygen"
  },
  earth_hash = {
    name: "Earth",
    mass: 23959,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 2,
    atmosphere: "carbon dioxide"
  },
  mars_hash = {
    name: "Mars",
    mass: 21123,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 16,
    atmosphere: "methane"
  },
  jupiter_hash = {
    name: "Jupiter",
    mass: 90875,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 7,
    atmosphere: "hydrogen"
  },
  saturn_hash = {
    name: "Saturn",
    mass: 5839,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 4,
    atmosphere: "oxygeb"
  },
  uranus_hash = {
    name: "Uranus",
    mass: 58522,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 2,
    atmosphere: "carbon dioxide"
  },
  neptune_hash = {
    name: "Neptune",
    mass: 13518,
    distance_from_the_sun: 234,
    diameter: 23234,
    moons: 6,
    atmosphere: "ammonia"
    }]


    mercury = Planet.new(mercury_hash)
    venus = Planet.new(venus_hash)
    earth = Planet.new(earth_hash)
    mars = Planet.new(mars_hash)
    jupiter = Planet.new(jupiter_hash)
    saturn = Planet.new(saturn_hash)
    uranus = Planet.new(uranus_hash)
    neptune = Planet.new(neptune_hash)

    our_planets = Array.new
    our_planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

    #adding multiple planets into the solar system
    milky_way = SolarSystem.new("Milky-way")
    milky_way.add_planets(our_planets)

    #adding a single planet
    pluto_hash = {
      name: "Pluto",
      mass: 345,
      distance_from_the_sun: 114,
      diameter: 777,
      moons: 9,
      atmosphere: "hydrogen"
    }

    #create planet object pluto
    pluto = Planet.new(pluto_hash)
    # create array of new planet(s)
    new_planet_array = [pluto]

    #add new planet(s) to SolarSystem
    milky_way.add_planets(new_planet_array)

    #print a list of planets
    i = 1
    milky_way.planets.each do |planet|
      print "#{i}."
      planet.puts_name
      i += 1
    end
    puts "or Exit"
    #get user input to choose planet information
    continue = true
    while continue

      puts "Please select a planet you would like to learn more about!"
      planet_choice = gets.chomp.capitalize

      milky_way.planets.each do |planet|
        if planet_choice == planet.name
          print planet.name + ": "
          planet.all_data
        elsif planet_choice == "Exit"
          continue = false
        end
      end
    end
    puts "We hope you learned lots!"
    puts "Come again soon!"
