class Quote < ActiveRecord::Base
  validates :text, presence: true

  def self.random_sample(num)
    all.sample(num)
  end
end
