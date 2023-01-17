require 'pry'

def time_of_day(minutes)
  days, total_mins = minutes.divmod(1440)
  hours, mins = total_mins.divmod(60)
  format('%02d:%02d', hours, mins)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)