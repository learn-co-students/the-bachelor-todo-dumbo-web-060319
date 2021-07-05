def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        return people["name"].split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |people|
      people.each do |key, value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |people|
      people.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
count = 0
age = 0
  data[season].each do |people|
    people.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
  return (age/count).round
end