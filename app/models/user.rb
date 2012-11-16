class User < ActiveRecord::Base
  attr_accessible :full_name, :provider, :title, :uid

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.full_name = auth["info"]["full_name"]
      user.access_token = auth["credentials"]["token"]
    end
  end
end
