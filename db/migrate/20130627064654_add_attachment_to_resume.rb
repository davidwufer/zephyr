class AddAttachmentToResume < ActiveRecord::Migration
  def change
    add_attachment :resumes, :file
  end
end
