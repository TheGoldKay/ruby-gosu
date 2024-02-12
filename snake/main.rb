require 'gosu'

class Game < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Snake Game"
    @background_image = Gosu::Image.new("media/space.png", :tileable => true)
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
    @background_image.draw(0, 0,)
  end
end

Game.new.show