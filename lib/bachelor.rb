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
# Helper to get to contestants
def all_contestants(data)
  all = []
    # go through data
    data.map do |season, contestants|
      all << contestants
    end
    all.flatten
end
# End of helpers

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
  # full name
  name = ""
  # go through data
  data.find do |season, contestants|
    # go through contestants
    contestants.find do |contestant|
      # if the a contestant's occupation is a match, set their name
      if contestant["occupation"] == occupation
        name = contestant["name"]
        return name
      end

    end

  end
  # then return it
  name
end

def count_contestants_by_hometown(data, hometown)
  # set count
  count = 0
  # get contestants
  all_contestants(data).map do |contestant|
    # when a contestant's hometown is a match
    # binding.pry
    if contestant["hometown"] == hometown
      # increment count
      count += 1
    end

  end
  # Return the final count
  count
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
