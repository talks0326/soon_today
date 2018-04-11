# == Schema Information
#
# Table name: photos
#
#  id                :integer          not null, primary key
#  photable_type     :string(255)      not null
#  photable_id       :integer          not null
#  photo_type        :integer
#  url               :string(255)
#  data_file_name    :string(255)
#  data_content_type :string(255)
#  data_file_size    :integer
#  data_updated_at   :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Photo < ActiveRecord::Base
end
