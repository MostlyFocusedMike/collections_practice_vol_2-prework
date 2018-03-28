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
  counter = 0
  data[0].map do |name,hash|
    
    hash.merge!(keys[counter - 1])
    counter += 1
    hash
  end
end
[{:first_name => "blake"},
 {:first_name => "ashley"}
]

[{"blake" => {
    :awesomeness => 10,
    :height => "74",
    :last_name => "johnson"
    },
  "ashley" => {
    :awesomeness => 9,
    :height => 60,
    :last_name => "dubs"
    }
  }]
  
[{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley",:awesomeness=>9, :height=>60, :last_name=>"dubs"}]
hashes = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
