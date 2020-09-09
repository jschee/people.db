class Note < ApplicationRecord
  belongs_to :contact
  before_create :generate_slug

  def generate_slug
    self.slug = SecureRandom.urlsafe_base64(6)
  end

end
