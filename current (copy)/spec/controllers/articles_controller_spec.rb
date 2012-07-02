require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../controllers/items_controller_spec_helper')

describe Admin::ArticlesController do
  controller_name 'admin/articles'
  include ItemsControllerSpecHelper
  
  def object 
    Article
  end
  
  def valid_params
    {
       "associated_workspaces"=>["1"],
       "title"=>"hello",
       "description"=>"world",
       "body"=>"good job on rspec",
       "keywords_field"=>[]
    }
  end
  
  def invalid_params
    {
       "associated_workspaces"=>["1"],
       "description"=>"world",
       "body"=>"good job on rspec",
       "keywords_field"=>[]
    }
  end
  
end

