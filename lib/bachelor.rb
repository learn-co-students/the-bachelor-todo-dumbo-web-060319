require 'pry'

def get_first_name_of_season_winner(data, season)
  # first name
  first_name = ""

  # go through our data
  data.find do |s, info|
    # If we've gotten to our correct season
    if s == season
      # Go through the contestants (an array of objects)
      info.select do |c|
        # if their status is "Winner"
        if c["status"] == "Winner"
          # extract their first name from "name"
          name_array = c["name"].split(' ')
          first_name = name_array[0]
        end

      end

    end

  end
# return first name
first_name
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
