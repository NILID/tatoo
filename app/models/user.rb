class User < ApplicationRecord
#  after_create :init

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :rememberable, :trackable and :omniauthable, :recoverable
  devise :database_authenticatable,
         :registerable,
         :validatable

  has_one :profile, dependent: :destroy

  accepts_nested_attributes_for :profile

  attr_writer :login

  validates :username,
      presence: true,
      uniqueness: { case_sensitive: false },
      exclusion: { in: LOGIN_BLACKLIST },
      length: { in: 3..100 }

  validates_format_of :username, with: /^[a-zA-Z0-9а-яА-Я _\-\.]*$/, :multiline => true

  def login
    @login || self.username || self.email
  end

    def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
    end


  private
    def init
      self.build_profile(price: (100*rand(5..100)),
                     work_type: Profile::WORK_TYPES.sample,
                         color: Profile::COLORS.sample,
                    tatoo_size: (5*rand(1..10)))
    end
end
