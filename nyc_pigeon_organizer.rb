def nyc_pigeon_organizer(data)
  names = data[:gender].values[0].concat(data[:gender].values[1])
  data_types = data.keys #[:color, :gender, :lives]
  pigeon_list={}
  i=0 
  while i<names.length do
    pigeon_stats={}
    j=0 
    while j<data_types.length do 
      sub_data_types = data[data.keys[j]].keys #[:purple, :grey, :white,...]
      k=0 
      while k<sub_data_types.length do
        name = names[i]
        key1 = data_types[j]
        key2 = sub_data_types[k]
        if data[key1][key2].include?(name)            #then create new stat OR add to existing stat array
          if pigeon_stats.has_key?(key1)
            pigeon_stats[key1] << "#{key2}"
          else pigeon_stats[key1] = ["#{key2}"]
          end 
        end
        k+=1
      end
      j+=1 
    end
    pigeon_list[name]=pigeon_stats
    i+=1
  end
  i=0
   while i<names.length do
      name = names[i]
      if pigeon_list[name][:gender].length > 1
        pigeon_list[name][:gender].shift
      end 
      i+=1
    end 
  return pigeon_list
end
