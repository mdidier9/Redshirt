require 'spec_helper'

describe Sport do
  it { should belong_to(:organization) }
  it { should have_many(:teams) }

end
