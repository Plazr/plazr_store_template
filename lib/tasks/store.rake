namespace :store do 
  
  desc "Save the store details to the store yml file"  
  task :create_yml, [:store_id, :name, :description, :email, :phone, :url] => :environment do |t, args|
  
    path = File.expand_path '../../',__FILE__
    
    if !File.exist?("#{path}/store.yml") 
      details = "store_id: #{args.store_id}\n" <<
                "name: #{args.name}\n" <<
                "description: #{args.description}\n" << 
                "email: #{args.email}\n" << 
                "phone: #{args.phone}\n" <<
                "url: #{args.url}\n"
      
      file = File.new("#{path}/store.yml", "w")
      file.write(details)
      file.close
    end
  end
end
