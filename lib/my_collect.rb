#my_collect method
#take in an argument of a collection
# iterate over that collection using a while loop
#execute the code in the block you call it with for each element in the collection (use the yield keyword)
#return the modified collection
#list includes the first and last name of each student
#collect a list of just their first names
#Should return:["Tim", "Tom", "Jim"]
#
#

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

#def my_collect(array)
  #my_collect(array) do |name|
   #name.split("").first
#end





#collection = ['ruby', 'javascript', 'python', 'objective-c']
#my_collect(collection) do |lang|
  #lang.upcase
#end

def my_collect(array)
  i = 0
  name_collection = []
  while i < array.length
    name_collection.push yield(array[i])
    i += 1
  end
  name_collection
end

my_collect(array) {|i| i.split(" ").first}
