module Formbuilder
  class EntryAttachment < ActiveRecord::Base

    has_attached_file :upload
    do_not_validate_attachment_file_type :upload

    validates :upload, presence: true

  end
end
