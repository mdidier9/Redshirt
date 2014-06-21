require 'spec_helper'

describe SportPreference do
  it { should belong_to(:player) }
  it { should belong_to(:sport) }

end
