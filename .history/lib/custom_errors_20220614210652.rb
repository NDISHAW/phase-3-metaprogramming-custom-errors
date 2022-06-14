require "pry"

class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = Person
      else
        raise PartnerError
        rescue PartnerError => error
        puts error.message
      end
    end
  end

  class PartnerError < StandardError
    p "You are not PRIVILAGED to this method"
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




