require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }
  it { should validate_length_of(:name).is_at_most(100) }

  it("titleizes the name of an survey") do
  survey = Survey.create({name: "giant steps", genre: "jazz"})
  expect(survey.name()).to(eq("Giant Steps"))
end
end
