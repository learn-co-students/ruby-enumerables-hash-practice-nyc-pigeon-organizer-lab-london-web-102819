def nyc_pigeon_organizer(data)
  organized_hash = {}
  data.reduce({}) do |memo, (attributes, attribute_names)|
    attribute_names.reduce({}) do |m, (attribute_name, names)|
      names.each do |name|
        if !organized_hash[name]
           organized_hash[name] = {attributes => ["#{attribute_name}"]}
        elsif !organized_hash[name][attributes]
          organized_hash[name][attributes]= ["#{attribute_name}"]
        else
              organized_hash[name][attributes].push("#{attribute_name}")
        end
      end
    end
  end
  p organized_hash
end



pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
