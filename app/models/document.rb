class Document < ActiveRecord::Base
  include ActionView::Helpers::NumberHelper

  belongs_to :course
  belongs_to :user

  validates_presence_of :label

  mount_uploader :file, DocumentUploader

  def file_name
    file.current_path.split("/").last if file?
  end

  def viewable_now?
    viewable_at <= Time.now
  end

end
