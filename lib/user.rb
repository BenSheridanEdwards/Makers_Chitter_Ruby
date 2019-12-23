require 'bcrypt'

class User
  attr_reader :id, :email, :name, :username

  def initialize(id:, email:, name:, username:)
    @id = id
    @email = email
    @name = name
    @username = username
  end

  def self.create(email:, password:, name:, username:)
    already_user = Database.exec("SELECT * FROM users WHERE email = '#{email}' OR username = '#{username}';")
    return if already_user.any?

    encrypted_password = BCrypt::Password.create(password)
    result = Database.exec("INSERT INTO users (email, password, name, username)
           VALUES ('#{email}', '#{encrypted_password}', '#{name}', '#{username}')
           RETURNING id, email, name, username;")
    
    User.new(
      id: result[0]['id'],
      email: result[0]['email'],
      name: result[0]['name'],
      username: result[0]['username']
      )
  end

  def self.find(id:)
    return nil unless id

    result = Database.exec("SELECT * FROM makers WHERE id = #{id};")
    
    User.new(
      id: result[0]['id'],
      email: result[0]['email'],
      name: result[0]['name'],
      username: result[0]['username']
      )
  end

  def self.authenticate(email:, password:)
    result = Database.exec("SELECT * FROM makers WHERE email = '#{email}';")
    return nil unless result.any?
    return unless BCrypt::Password.new(result[0]['password']) == password

    User.new(
      id: result[0]['id'],
      email: result[0]['email'],
      name: result[0]['name'],
      username: result[0]['username']
      )
  end
end
