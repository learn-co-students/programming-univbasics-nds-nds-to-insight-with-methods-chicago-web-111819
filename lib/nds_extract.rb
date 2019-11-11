require 'directors_database'
directors_database

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
   row_index = 0 
  while row_index < nds.length do
    second_index = 0 
    sum = 0 
    while second_index < nds[row_index][:movies].length do 
      sum += nds[row_index][:movies][second_index][:worldwide_gross]
      second_index += 1 
    end
    name = nds[row_index][:name]
    result[name] = sum 
    row_index += 1 
  end 
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  row_index = 0 
  sum = 0 
  while row_index < directors_database.length do
    if directors_database[row_index][:name] == director_data
      second_index = 0 
      while second_index < directors_database[row_index][:movies].length do 
        sum += directors_database[row_index][:movies][second_index][:worldwide_gross]
      end 
    else 
      row_index += 1 
    end
  end 
  
  return sum 
  
end
