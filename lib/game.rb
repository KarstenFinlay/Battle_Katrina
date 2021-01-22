require_relative 'player'

class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last 
  end

  def attack(player)
    player.take_damage
  end

  def switch_turn
    @current_turn = next_person_turn(current_turn)
  end

  private

  def next_person_turn(other_player)
    @players.select { |player| player != other_player }.first
  end

end