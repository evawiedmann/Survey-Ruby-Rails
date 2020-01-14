require 'rails_helper'
require 'questions'
require 'survey'

describe Question do
  it { should belong_to(:survey) }
end
