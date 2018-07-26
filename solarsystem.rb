class System
  def initialize
    @bodies = []
  end

  def add(name, mass)
    new_body = Body.new(name, mass)
    @bodies << new_body
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
sys1 = System.new
sys1.add('pluto', 1000)
p sys1
