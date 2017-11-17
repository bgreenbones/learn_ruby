class Timer
  #write your code here
  def initialize(seconds=0)
  	@seconds=seconds
  end

  def pad(number)
  	num_str = number.to_s
  	unless -10 < number and number > 10
  		num_str = "0#{num_str}"
  	end

  	return num_str
  end

  def time_string
  	hours=@seconds/(60*60)
  	minutes=(@seconds/60)-hours*60
  	seconds=@seconds-minutes*60-hours*60*60

  	return "#{pad(hours)}:#{pad(minutes)}:#{pad(seconds)}"
  end

  def seconds=(seconds=0)
  	@seconds=seconds
  end

  def seconds
  	@seconds
  end

end
