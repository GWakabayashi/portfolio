module CurrentUserConcern
  extend ActiveSupport::Concern 

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "young jedi", 
                  first_name: "young jedi", 
                  last_name: "jedi", 
                  email: "darthvader@deathstar.com"
                  )
  end
end