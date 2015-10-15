require 'gosu'
include Math

class Window < Gosu::Window
  def initialize
    super 600, 400, false
    @char = Gosu::Image.new('img/char.png')
    @x_pos = 0
    @y_pos = 0
  end
  def update
    @x_pos += 2
    @y_pos = 50*sin(@x_pos/(PI*10))+168
    @x_pos %= 600
    if button_down? Gosu::KbEscape
      close
    end
  end
  def draw
    @char.draw(@x_pos,@y_pos,0)
  end
end

window = Window.new
window.show