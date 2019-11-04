
require 'pp'
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  #pp nds

  result = {}
  nds_index = 0
  while nds_index < nds.length do
    director_name = nds[nds_index][:name]
    result[director_name] = gross_for_director(nds[nds_index])
    nds_index +=1
  end
  result
end


##GOOD DONT TOUCH##

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
#pp director_data
  row_index = 0
  director_gross = 0
  while row_index < director_data[:movies].length
    director_gross += director_data[:movies][row_index][:worldwide_gross]
    row_index += 1
  end
director_gross
end