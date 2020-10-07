def nyc_pigeon_organizer(data)
  nyc_pigeon = Hash.new
  names = data[:gender].values
  names.map{|i| i.map {|name|
  nyc_pigeon[name]= {:color => [], :gender => [], :lives => []
  }
  }
  }
  nyc_pigeon

data.select{|key, value|
  value.select{|key_2, value_2|
    value_2.map{|name| 
      nyc_pigeon[name][key]<<key_2.to_s
    }
  }
}  
 nyc_pigeon  
end
