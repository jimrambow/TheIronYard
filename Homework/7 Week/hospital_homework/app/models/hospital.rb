class Hospital < ActiveRecord::Base
  has_many :patients
  has_many :doctors, as: :treatable

  validates :name, presence: true
  validates :description, presence: true
  has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => { app_key: ENV['APP_KEY'],
                              app_secret: ENV['APP_SECRET'],
                              access_token: ENV['ACCESS_TOKEN'],
                              access_token_secret: ENV['ACCESS_TOKEN_SECRET'],
                              user_id: ENV['USER_ID'],
                              access_type: 'app_folder'}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\z/
end

