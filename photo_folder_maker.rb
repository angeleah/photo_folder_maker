Dir.chdir("/Volumes/ang_1tb/1tbexternal_my_photography")

def check_model(model_name) 
   if Dir.exist?("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}")
     puts "That model #{model_name} already has a file.  I will put the set inside the file."
  else 
    Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}") 
    puts "That model #{model_name} did not exist so I created a file."
  end     
end


def check_set(model_name,set_name) 
     if Dir.exist?("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}")
       puts "#{model_name} already has a set named that.  Please select another set name."
    else 
      Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}") 
      puts "#{model_name}'s set was created."
    end     
end

def populate_set(model_name,set_name)
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_originals")
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_first_favs")
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_to_edit")
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_high_res_tiff")
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_high_res_jpeg")
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_web")
  Dir.mkdir("/Volumes/ang_1tb/1tbexternal_my_photography/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_8x10")
end
    

model_name = (ARGV[0])
set_name = (ARGV[1])
check_model(ARGV[0])
check_set(ARGV[0],ARGV[1])
populate_set(ARGV[0],ARGV[1])
