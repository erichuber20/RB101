def dms(float)
  degrees = float.to_i
  minutes = (float * 60).divmod(60)[1].to_i
  seconds = (float * 60 * 60).divmod(60)[1].to_i

  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")



# my other brute force solution
#      DEGREE = "\xC2\xB0"
#      def add_leading_zero(number)
  #      number_string = number.to_s
  #      if number_string[0,2].size == 1
    #      "0#{number}"
  #      else
    #      number
  #      end
#      end
#      
#      def dms(float)
  #      degrees = float.to_i
  #      minutes = ((float % 1) * 60)
  #      seconds = ((minutes% 1) * 60)
#      
  #      minutes = minutes.round
  #      seconds = seconds.round
#      
  #      formatted_minutes = add_leading_zero(minutes)
  #      formatted_seconds = add_leading_zero(seconds)
#      
  #      final_output = "#{degrees}#{DEGREE}#{formatted_minutes}'#{formatted_seconds}"
#      end