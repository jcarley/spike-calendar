class Event < ActiveRecord::Base
  attr_accessible :title, :start, :end, :url

  url_regex = /(^(http|https):\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix

  validates :title,   :presence => true,
                      :length => { :maximum => 50 }

  validates :url,     :allow_blank => true,
                      :format => { :with => url_regex }

end
