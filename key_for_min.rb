# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = ""
  min_value = ""
  count = 0
  if name_hash.length == 0
    return nil
  end
  name_hash.collect do |key, value|
    if count == 0
      min_key = key
      min_value = value
      count +=1
    else
      if value < min_value
        min_value = value
        min_key = key
        count +=1
      end
    end
  end
  min_key
end