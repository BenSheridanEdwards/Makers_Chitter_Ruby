require 'peep'
require 'user'

describe Peep do

  before(:all) do
    chosen_time = Time.new(2019, 12, 25, 12, 0, 0, "+00:00")
    Timecop.freeze(chosen_time)
    user = User.create(email: "bensheridanedwards@makers.com", password: "password", name: "Ben", username: "BenSE")
    peep = Peep.create(user_id: user.id, content: "This is my first peep!")
  end

  describe '.all' do
    it "returns a list of all peeps" do
      Peep.create(user_id: user.id, content: "This is my second peep!")
      Peep.create(user_id: user.id, content: "This is my third peep!")

      peeps = Peep.all

      expect(peeps[0]).to be_a Peep

    end
  end
end