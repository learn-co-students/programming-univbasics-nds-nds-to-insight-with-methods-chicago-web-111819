require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_idx = 0
  while nds[director_idx]
    result[nds[director_idx][:name]] = gross_for_director(nds[director_idx])
    director_idx += 1
  end # directors
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    movie_idx = 0
    total = 0
    while director_data[:movies][movie_idx]
      total += director_data[:movies][movie_idx][:worldwide_gross]
      movie_idx += 1
    end # movie totals
  total
end
