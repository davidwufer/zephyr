# == Schema Information
#
# Table name: resumes
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  resume_file_name    :string(255)
#  resume_content_type :string(255)
#  resume_file_size    :integer
#  resume_updated_at   :datetime
#

class Resume < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :body
end
