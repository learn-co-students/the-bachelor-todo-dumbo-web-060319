def get_first_name_of_season_winner(data, season)
  # code here
 
 answer = ""
  data.each do |season_number, info_array|
    if season_number == season
      info_array.each do |details|
        if details["status"] == "Winner"
          answer = details["name"].split
        end
      end
    end
  end
  puts answer
  answer[0]
end

def get_contestant_name(data, occupation)
  # code here
  answer = ""
  data.each do |season_number, info_array|
    info_array.each do |details|
      if details["occupation"] == occupation
        answer = details["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  # code here
 counter = 0 
 answer = ""
 data.each do |season_number, info_array|
    info_array.each do |details|
      if details["hometown"] == hometown
        answer = details["name"]
        counter += 1 
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, info_array|
    info_array.each do |details|
      if details["hometown"] == hometown
        return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
   ages = 0 
   counter = 0
   data.each do |season_number, info_array|
     if season_number == season
       info_array.each do |details|
          ages += details["age"].to_f 
          counter += 1
        end
      end
    end
  ages = (ages/counter).round
end
