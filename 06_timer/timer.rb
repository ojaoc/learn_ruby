class Timer
  attr_accessor :timer

  def initialize(int=0)
    @timer = int
  end

  def seconds
    @timer
  end

  def seconds=(int)
    @timer = int 
  end

  def time_string
    @seconds = @timer % 60
    @minutes = ((@timer - (@timer % 60)) / 60) % 60
    @hours = ((@timer - (@timer % 60)) / 60) / 60

    return "#{time_padding(@hours)}:#{time_padding(@minutes)}:#{time_padding(@seconds)}"
  end

  def time_padding(int)
    if int < 10
      return "0" + int.to_s
    else
      return int.to_s
    end
  end

end