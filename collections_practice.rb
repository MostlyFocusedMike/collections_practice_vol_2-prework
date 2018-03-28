require 'pry'

# your code goes here
def begins_with_r(arr)
  return !(arr.any? {|word| word[0] != "r"})
end  

def contain_a(arr)
  arr.map {|word| word if word.include?("a")}.compact
end

def first_wa(arr)
  arr.find {|word| word[0..1] =="wa"}
end

def remove_non_strings(arr)
  arr.delete_if {|val| val.class != String}
end

def count_elements(hashes)
  hashes.uniq.map do |item|
    item[:count] = hashes.count(item)
    item
  end
end

def merge_data(keys,data)
  keys.map do |hash|
    hash.merge(data[0][hash[:first_name]])
  end
end

def find_cool(cool)
  cool.select do |hash|
    binding.pry
    hash[:temperature] == "cool"
  end
end

