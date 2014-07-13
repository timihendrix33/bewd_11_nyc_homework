


def location_hash
@location_check= {}
@location_check[:la]= "2442047"
@location_check[:boston]= "2367105"
@location_check[:nyc]= "2459115"
@location_check[:chicago]= "2379574"
end

def check_location
@location_check.each do |k, v|
if k== @location.to_sym
 @woeid= v
puts "sucess"
puts @woeid
	else
	puts "fail"
end
end
end