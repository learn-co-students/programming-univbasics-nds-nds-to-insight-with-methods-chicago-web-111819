require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

pp directors_database

def directors_totals(nds)
  result = {}
  counter = 0
  while counter < nds.length do
    result[nds[counter][:name]] = gross_for_director(nds[counter])
    counter += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0
  counter = 0
  while counter < director_data[:movies].length do
    total_gross += director_data[:movies][counter][:worldwide_gross]
    counter += 1
  end
  total_gross
end
