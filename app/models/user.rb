# noinspection ALL
class User < ActiveRecord::Base
  has_many :favourite_stores, dependent: :destroy
  has_many :sales, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :favourite_lists, dependent: :destroy

  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :twitter]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.uid + "@twitter.com").first
      if registered_user
        return registered_user
      else
        user = User.create( #name:auth.extra.raw_info.name, #if we add name to User
            provider: auth.provider,
            uid: auth.uid,
            email: auth.uid+"@twitter.com", #automatically generated because Twitter doesn't share users' email addresses
            password: Devise.friendly_token[0, 20],
        )
      end

    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
