class User < ActiveRecord::Base

  attr_accessor :password
  before_save :encrypt_password

  validates_presence_of :password, :on => :create, :message => "is mandatory!"
  validates_presence_of :email, :message => "can't be blank!"
  validates_uniqueness_of :email, :allow_blank => false, :allow_nil => false, :message => "is already in use!"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "is not a real e-mail!"

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def send_password_reset
    generate_secure_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_recovery(self).deliver
  end

  def send_welcome_email
    UserMailer.welcome_to_gumball(self).deliver
  end

  private
  def generate_secure_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end
