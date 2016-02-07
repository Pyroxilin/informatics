#!/bin/env ruby

class Bottle
  def initialize(liquid_type, initial_volume)
    @liquid_type = liquid_type
    @liquid_volume = initial_volume
  end

  def dispence(ammount)
    break! if(rand(0..20) == 20)

    if dispensable?
      @liquid_volume -= ammount
      return ammount
    else
      false
    end
  end

  def liquid_type
    @liquid_type
  end

  def made_of
    raise NotImplementedError
  end

  private

  def dispensable?(ammount)
    @liquid_volume >= ammount
  end

  def break!
    @beer_volume = 0
  end
end


class PlasticBottle < Bottle
  def made_of
    'plastic'
  end
end


beer_bottle = PlasticBottle.new('beer', 500)

dispensed_volume = beer_bottle.dispence(200)

beer_bottle.made_of # => 'plastic'

beer_bottle.liquid_type # => 'beer'


a = [1,6,4,8]
a.sort.reverse # => [8,6,4,1]
a.each{|elem| puts(elem*2)}
