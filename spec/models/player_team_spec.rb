require 'spec_helper'

describe PlayerTeam do
  it { should belong_to(:player) }
  it { should belong_to(:team) }

end
