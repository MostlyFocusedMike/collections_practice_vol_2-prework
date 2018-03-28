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
  fin = hashes.uniq
  fin.map do |item|
    item[:count] = hashes.count(item)
  end
end

hashes = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
binding.pry