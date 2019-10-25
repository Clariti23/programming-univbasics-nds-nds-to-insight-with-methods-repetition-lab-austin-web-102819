$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  i = 0 
    director_list = []
    while i < source[director_index].length
      director_list << source[director_index][i]
      i += 1 
    end
  
  return director_list
end

def total_gross(source)

  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use

  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  total = 0
  j = 0 
  while j < list_of_directors(source).length 
     if directors_totals(source).has_key?[list_of_directors(source)[j]]
       total += directors_totals[source]
     end
    j += 1 
  end
  return total 
end


