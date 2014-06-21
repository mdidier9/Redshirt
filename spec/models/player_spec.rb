require 'spec_helper'

describe Player do
  it { should have_many(:player_teams) }
  it { should have_many(:teams).through(:player_teams) }

end
