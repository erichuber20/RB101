def after_midnight(twenty_four_hour_time)
  minutes_in_hours_place = (twenty_four_hour_time[0,2].to_i) * 60
  minutes_in_minutes_place = twenty_four_hour_time[3,2].to_i
  (minutes_in_hours_place + minutes_in_minutes_place) % 1440
end

def before_midnight(twenty_four_hour_time)
  (1440 - after_midnight(twenty_four_hour_time)) % 1440
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0