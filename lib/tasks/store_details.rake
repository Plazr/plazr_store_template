namespace :store do 
  
  task :save, [:store_id, :name, :description, :email, :phone, :url] => :environment do |t, args|
  
    path = File.expand_path '../../',__FILE__
    
    if !File.exist?("#{path}/store_details.yml") 
      details = "store_id: #{args.store_id}\n" <<
                "name: #{args.name}\n" <<
                "description: #{args.description}\n" << 
                "email: #{args.email}\n" << 
                "phone: #{args.phone}\n" <<
                "url: #{args.url}\n"
      
      file = File.new("#{path}/store_details.yml", "w")
      file.write(details)
      file.close
    end
  end
  
  desc "Save the store details to the store yml file"
  task :save_store_details => :environment do
    details = "store_id: " << :store_id.to_s << 
              "\nname: " << :name.to_s <<
              "\ndescription: " << :description.to_s <<
              "\nemail: " << :email.to_s <<
              "\nphone: " << :phone.to_s <<
              "\nurl: " << :url.to_s
  end  
  
  def pick(model_class)
    model_class.find(:first)
  end
end
