def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_no, info|
    if season_no == season
      info.each do |contestant|
        if contestant["status"] == "Winner"
          full_name = contestant["name"].split(' ')
          return full_name.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
    data.each do |season, info|
      info.each do |contestant|
        if contestant["occupation"] == occupation
          full_name = contestant["name"]
          return full_name
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info|
    info.each do |contestant|
        if contestant["hometown"] == hometown
          count = count + 1
        end 
    end 
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        occupation = contestant["occupation"]
        return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season_no)
  sum = 0
  count = 0
  data.each do |season, info|
    if season == season_no 
      info.each do |contestant|
        age = contestant["age"].to_f
        if age > 0
          sum = sum + age
          count = count + 1
        end
      end
    end
  end
  return (sum / count).round
end