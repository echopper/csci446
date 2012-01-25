class Player
  def play_turn(warrior)
    if warrior.health < 10 
      if warrior.feel(:backward).wall?
        warrior.rest!
      elsif warrior.feel(:backward).captive?
        warrior.rescue!(:backward)
      elsif warrior.feel(:backward).empty?
        warrior.walk!(:backward)
      end
    elsif warrior.feel.empty?
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
    else
      warrior.attack!
    end
    @health = warrior.health
  end
end
