def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
data.each do |key, value|
  value.each do |stats, pigeon_names|
    pigeon_names.each do |name|
      if new_pigeon_hash[name] == nil
        new_pigeon_hash[name] = {}
      end
     if new_pigeon_hash[name][key] == nil
     new_pigeon_hash[name][key] = []
     end
   new_pigeon_hash[name][key].push(stats.to_s)
   end
 end
end
new_pigeon_hash
end
