def get_first_name_of_season_winner(data, season)
  result=""
  data.each do |sea_son,arr|
    if season == sea_son
      result=data[sea_son][0]["name"]
    end
  end
  return result.split[0]
end

def get_contestant_name(data, occupation)
  data.each do |season,arr|
    arr.each do |hash|
      hash.each do |info,desc|
       return hash["name"] if info=="occupation" && desc == occupation
      end
    end
  end
  
end

def count_contestants_by_hometown(data, hometown)
  count=0
  data.each do |season,arr|
    arr.each do |hash|
      count+=1 if hash["hometown"]==hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season,arr|
    arr.each do |hash|
   return hash["occupation"] if hash["hometown"]== hometown
    end
  end
end

def get_average_age_for_season(data, season)
  sum=0
  count=0
    data[season].each do |hash|
      sum+=hash["age"].to_f
      count+=1
    end
    return (sum/count).round
end
