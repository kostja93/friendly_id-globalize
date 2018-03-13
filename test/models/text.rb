class Text < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    title_changed? || super
  end
end
