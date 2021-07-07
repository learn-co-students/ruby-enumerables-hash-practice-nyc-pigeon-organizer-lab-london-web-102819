

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |color_gender_lives, stats1|
    stats1.each do |stats2, names|
      names.each do |name| 
        if !new_hash[name] 
          new_hash[name] = {}
        end 
        if !new_hash[name][color_gender_lives] 
          new_hash[name][color_gender_lives] = []
        end
        new_hash[name][color_gender_lives].push(stats2.to_s)
      end
    end
  end
  new_hash
end

