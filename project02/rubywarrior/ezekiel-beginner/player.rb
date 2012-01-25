class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < 20
        if warrior.health < @health
          warrior.walk!
        else
          warrior.rest!
        end
      else
        warrior.walk!
      end
    elsif warrior.feel.captive?
      warrior.rescue!
    elsif
      warrior.attack!
    end 
    @health = warrior.health
  end
end
