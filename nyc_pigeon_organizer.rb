def nyc_pigeon_organizer(data)
 pigeon_list={}
 data.each{|prop_name, prop_values|
  prop_values.each{|spec_value, pigeons|
    pigeons.each{|name|
      if pigeon_list.key?(name)==false
        pigeon_list.store(name,{})      
      end
     if pigeon_list[name].key?(prop_name)==false
       pigeon_list[name].store(prop_name,[])
     end
     pigeon_list[name][prop_name].push(spec_value.to_s)
    }
  }
 }
 
 return pigeon_list
end