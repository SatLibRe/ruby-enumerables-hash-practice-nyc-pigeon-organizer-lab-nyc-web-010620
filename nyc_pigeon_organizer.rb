require "pry"

def nyc_pigeon_organizer(pigeon_data)
  new_hash = {}
    pigeon_data.each do |c_g_l,data|
      data.each do |stats,all_names|
        all_names.each do |name|
          if new_hash[name] == nil 
            new_hash[name] = {}
          end 
          if new_hash[name][c_g_l] == nil 
              new_hash[name][c_g_l] = []
          end 
          new_hash[name][c_g_l].push(stats.to_s)
        end 
      end 
    end
    new_hash
end
