require 'user'

describe User do

  describe ".create" do
    before(:each) do 
      user = User.create(email: "bensheridanedwards@makers.com", password: "password", name: "Ben", username: "BenSE")
    end

    it 'creates a new user' do
      persistent_data = persistent_data(table: users, id: user.id)
      
      expect(user).to be_a User
      expect(user.id).to eq persistent_data[0]['id']
      expect(user.email).to eq "bensheridanedwards@makers.com"
      expect(user.name).to eq "Ben"
      expect(user.username).to eq "BenSE"
    end

    it 'hashes the password using BCrypt' do
      expect(BCrypt::Password).to receive(:create).with("password")
      user
    end

    it 'does not create a new user if the given email has already been used by another user' do
      expect(User.create(email: "bensheridanedwards@makers.com", password: "password", name: "Ben", username: "BenSE")).to be nil
    end
  end

  describe '.find' do
    before(:each) do 
      user = User.create(email: "bensheridanedwards@makers.com", password: "password", name: "Ben", username: "BenSE")
    end

    it 'finds a user by their ID' do
      found_user = User.find(id: user.id)

      expect(found_user.id).to eq user.id
      expect(found_user.email).to eq user.email
      expect(found_user.name).to eq user.name
      expect(found_user.username).to eq user.username
    end

    it 'returns nil if there is no ID given' do
      expect(Maker.find(id: nil)).to eq nil
    end
  end

  describe ".authenticate" do
    before(:each) do 
      user = User.create(email: "bensheridanedwards@makers.com", password: "password", name: "Ben", username: "BenSE")
    end

    it 'returns a user given an existing and correct email and password combination' do
      authenticated_user = User.authenticate(email: "bensheridanedwards@makers.com", password: "password")
      expect(authenticated_user.id).to eq user.id
    end

    it 'returns nil when given an incorrect email address for a existing user' do
      authenticated_user = User.authenticate(email: "Incorrect@makers.com", password: "password")
      expect(authenticated_user).to eq nil
    end

    it 'returns nil when given an incorrect password for a existing user' do
      authenticated_user = User.authenticate(email: "bensheridanedwards@makers.com", password: "notmypassword")
      expect(authenticated_user).to eq nil
    end
  end
end