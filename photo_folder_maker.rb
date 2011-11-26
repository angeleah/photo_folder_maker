=begin
#check for folder in 1tbex my photog directory -> if folder exists puts "That folder already exits." and then skip to next puts
   # else creat that folder 
   
   #need to strip out the space and replace it with an underscore
   

=end
#add an underscore to the end of the last name and add the set name.
#inside the fname_lname_setname folder, create _originals, _first_favs, _to_edit, _high_res_tif, _high_res_jpg, _web, _8x10 


#Dir.chdir("/Volumes/ang_1tb/1tbexternal_my_photography")
#puts pwd

=begin


def check(model_name)
   File.directory?("/Volumes/ang_1tb/1tbexternal_my_photography/\"#{model_name}\"")
end


def create(model_name,set_name)
  if check == true
     
end

def sub_folders
  
end  
  

d = Dir.new(name)

model_name = (ARGV[0])
set_name = (ARGV[1])




Dir.chdir("/Volumes/ang_1tb/1a")

def check_model(model_name) 
   if Dir.exist?("/Volumes/ang_1tb/1a/\"#{model_name}\"")
     puts "That model #{model_name} already has a file.  I will put her set inside her file."
  else 
    Dir.mkdir("/Volumes/ang_1tb/1a/\"#{model_name}\"") 
    puts "That model #{model_name} did not exist so I made her a file."
  end     
end

model_name = (ARGV[0])
set_name = (ARGV[1])
check_model(ARGV[0])
check_set(ARGV[1])


#set_name = (ARGV[1])
=end

Dir.chdir("/Volumes/ang_1tb/1a")

def check_model(model_name) 
   if Dir.exist?("/Volumes/ang_1tb/1a/#{model_name}")
     puts "That model #{model_name} already has a file.  I will put the set inside the file."
  else 
    Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}") 
    puts "That model #{model_name} did not exist so I created a file."
  end     
end


def check_set(model_name,set_name) 
     if Dir.exist?("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}")
       puts "#{model_name} already has a set named that.  Please select another set name."
    else 
      Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}") 
      puts "#{model_name}'s set was created."
    end     
end

def populate_set(model_name,set_name)
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_originals")
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_first_favs")
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_to_edit")
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_high_res_tiff")
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_high_res_jpeg")
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_web")
  Dir.mkdir("/Volumes/ang_1tb/1a/#{model_name}/#{model_name}_#{set_name}/#{model_name}_#{set_name}_8x10")
end
    

model_name = (ARGV[0])
set_name = (ARGV[1])
check_model(ARGV[0])
check_set(ARGV[0],ARGV[1])
populate_set(ARGV[0],ARGV[1])
