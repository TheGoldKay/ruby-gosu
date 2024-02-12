require 'gosu'

class Game < Gosu::Window
  def initialize
    super (640 * 1.5).floor, (480 * 1.5).floor
    self.caption = "Snake Game"
    self.borderless = true
  end
  
  def update
    # ...
  end
  
  def button_down id # overwrite button_down implementation
    case id 
    when Gosu::KbEscape
        close
    end
  end
  
  def draw
    # phthalo green background
    draw_quad(0, 0, Gosu::Color.rgb(0, 123, 100),
              width, 0, Gosu::Color.rgb(0, 123, 100),
              width, height, Gosu::Color.rgb(0, 123, 100),
              0, height, Gosu::Color.rgb(0, 123, 100))
  end
end

Game.new.show