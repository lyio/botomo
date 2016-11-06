class Book < ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true

  def self.search search_term
    if search_term
      self.search_for_books search_term
    else
      self.all
    end
  end

  def self.search_for_books(search_term)
    sanitized = "%#{search_term}%"

    self.where(
      "author LIKE  ? OR title LIKE ? OR subtitle LIKE ?",
      sanitized,
      sanitized,
      sanitized)
  end
end
