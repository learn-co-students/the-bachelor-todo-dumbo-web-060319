def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |info|
      info.each do |key, value|
        if value == "Winner"
          winner << info["name"]
        end
      end
    end
  winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  full_name = ""
  data.each do |season, array|
    array.each do |info|
      info.each do |key, value|
        if value == occupation
          full_name = info["name"]
        end
      end
    end
  end
  full_name
end

def count_contestants_by_hometown(data, hometown)
  names = []
  data.each do |season, array|
    array.each do |info|
      info.each do |key, value|
        if value == hometown
          names << info["name"]
        end
      end
    end
  end
  names.length
end

def get_occupation(data, hometown)
  names = []
  data.each do |season, array|
    array.each do |info|
      info.each do |key, value|
        if value == hometown
          names << info["occupation"]
        end
      end
    end
  end
  names.first
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |info|
    info.each do |key, value|
      if key == "age"
        ages << info["age"].to_f
      end
    end
  end
  ages = (ages.sum / ages.length).round
end
