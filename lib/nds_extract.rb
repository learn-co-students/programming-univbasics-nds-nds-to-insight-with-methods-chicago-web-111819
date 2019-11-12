require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    movie_index = 0
    gross_total = 0
    while movie_index < nds[row_index][:movies].length do
      gross_total += nds[row_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result[nds[row_index][:name]] = gross_total
    row_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    movie_index = 0
    gross_total = 0
    while movie_index < director_data[:movies].length do
      gross_total += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    gross_total
end
