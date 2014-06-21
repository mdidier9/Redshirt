require 'spec_helper'

describe Sport do
  it { should belong_to(:organization) }
  it { should have_many(:teams) }
  it { should have_many(:sport_preferences) }
  it { should have_many(:players).through(:sport_preferences) }

end
