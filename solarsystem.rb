class System
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    mass = 0
    @bodies.each do |body|
      mass += body.mass
    end
    return mass
  end

end

class Body < System
  def initialize(name, mass)
    @mass = mass
    @name = name
  end
end

class Planet < Body
  attr_accessor :day, :year, :mass
  def initialize(name, mass, day, year)
    @name = name
    @mass = mass
    @day = day
    @year = year
  end
end

class Stars < Body
  attr_accessor :type, :mass
  def initialize(name, mass, type)
    @name = name
    @mass = mass
    @type = type
  end
end

class Moons < Body
  attr_accessor :mass
  def initialize(name, mass, month)
    @name = name
    @mass = mass
    @month = month
  end

  def planet(name, mass, day, year)
    @planet = Planet.new(name, mass, day, year)
  end
end
sys1 = System.new
sun = Stars.new('the sun', 1000, 'g-type')
earth = Planet.new('Earth', 1000, 500, 200)
moon = Moons.new('moon', 10000, 2)
sys1.add(sun)
sys1.add(earth)
sys1.add(moon)
p sys1
p sys1.total_mass
