def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data[season].each do |contestant|
  	if contestant["status"] == "Winner"
      winner = contestant["name"].split(" ")[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |season, contestants|
  	contestants.each do |contestant|
  	  if contestant["occupation"] == occupation
  	  	return name = contestant["name"]
  	  end
  	end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
  	contestants.each do |contestant|
  	  if contestant["hometown"] == hometown
  	  	count += 1
  	  end
  	end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  name = nil
  data.each do |season, contestants|
  	contestants.each do |contestant|
  	  if contestant["hometown"] == hometown
  	  	return name = contestant["occupation"]
  	  end
  	end
  end
  name
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  count = 0
  data[season].each do |contestant|
    age_sum += contestant["age"].to_f
    count += 1
  end
  (age_sum / count).round
end
