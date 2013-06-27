class ChangeAttachmentNameInResume < ActiveRecord::Migration
  def change
    remove_attachment :resumes, :file
    add_attachment :resumes, :resume
  end
end
