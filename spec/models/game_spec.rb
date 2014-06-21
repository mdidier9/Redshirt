require 'spec_helper'

describe Game do
  it { should belong_to(:home_team).class_name("Team") }
  it { should belong_to(:away_team).class_name("Team") }
  it { should belong_to(:location) }
  it { should belong_to(:winner).class_name("Team") }
  
end
