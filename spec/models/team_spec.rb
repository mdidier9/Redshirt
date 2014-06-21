require 'spec_helper'

describe Team do
  it { should have_many(:player_teams) }
  it { should have_many(:players).through(:player_teams) }
  it { should have_many(:home_games).class_name("Game").with_foreign_key(:home_team_id) }
  it { should have_many(:away_games).class_name("Game").with_foreign_key(:away_team_id) }
  it { should have_many(:wins).class_name("Game").with_foreign_key(:winner_id) }
  it { should belong_to(:sport) }

end
