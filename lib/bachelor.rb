require 'pry'

# Helper function for finding a season
def find_season(data, season)
    # go through our data
    data.find do |s, info|
      # If we've gotten to our correct season, 
      # return the contestants from that season
      return info if s == season
    end

end

def get_first_name_of_season_winner(data, season)
  # first name
  first_name = ""

  find_season(data, season).select do |c|
      #  if their status is "Winner"
        if c["status"] == "Winner"
          # extract their first name from "name"
          name_array = c["name"].split(' ')
          first_name = name_array[0]
        end
  end
# return first name
first_name
end

def get_contestant_name(data, occupation)

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
