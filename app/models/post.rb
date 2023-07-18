class Post < ApplicationRecord
    before_validation :format_title
    validates :title, :content, presence:true
    #belongs_to :user


    
    
  private 
  
    def format_title    
      self.title = title.capitalize 
    end

end
