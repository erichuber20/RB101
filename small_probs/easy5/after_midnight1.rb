MINUTES_PER_DAY = 1440
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

def time_of_day(minutes)
  days, total_mins = minutes.divmod(MINUTES_PER_DAY)
  hours, mins = total_mins.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, mins)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)