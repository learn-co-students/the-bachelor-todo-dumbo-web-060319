def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        contestant.each do |stats, val|
          if val == "Winner"
            first_name = contestant["name"].split(" ")
            return first_name.first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
      contestants.each do |contestant|
        contestant.each do |stats, val|
          if val == occupation
            return contestant["name"]
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  num_from_hometown = 0
  data.each do |seasons, contestants|
      contestants.each do |contestant|
        contestant.each do |stats, val|
          if val == hometown
            num_from_hometown += 1
          end
        end
      end
  end
  num_from_hometown
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
      contestants.each do |contestant|
        contestant.each do |stats, val|
          if val == hometown
            return contestant["occupation"]
          end
        end
      end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  num_of_peeps = 0
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        contestant.each do |stats, val|
          if stats == "age"
            num_of_peeps += 1
            ages += val.to_i
          end
        end
      end
    end
  end
  (ages.to_f / num_of_peeps).round(0)
end
