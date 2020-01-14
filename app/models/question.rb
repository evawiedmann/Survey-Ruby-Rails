require 'survey'

class Question < ApplicationRecord
  belongs_to :survey
end
