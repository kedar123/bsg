class Groupshowartwork < ActiveRecord::Base
  belongs_to :groupshow
  belongs_to :user
  
  def save_image(params)
		if  !params["groupshow_user"]["image"].blank?
				self.save
				dataname=self.id.to_s+params["groupshow_user"]["image"].original_filename
				name=dataname.split(".")[1]
				isitimage=name =~ /jpg|jpeg|gif|png|JPG|JPEG|GIF|PNG/
					if  isitimage
						self.artworkurl = dataname
					end
						directory = "public/system/groupshow/"
						# create the file path
						path = File.join(directory, dataname)
						# write the file
						File.open(path, "wb") { |f| f.write(params["groupshow_user"]["image"].read) }
		else
		end
	end	
  
  

  
  
end
