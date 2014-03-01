module Formbuilder
  class EntryAttachment < ActiveRecord::Base

    has_attachment :upload
    do_not_validate_attachment_file_type :upload

    validates :upload, presence: true

  end
end
