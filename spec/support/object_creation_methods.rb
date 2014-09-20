def create_user(overrides = {})
  User.create!({
                 name: 'Some User',
                 email: 'user@example.com',
                 password: 'password',
                 password_confirmation: 'password'
               }.merge(overrides))
end

def create_task(overrides = {})
  Task.create!({
                 name: 'Greeter',
               }.merge(overrides))
end

def create_celebrant(overrides = {})
  Celebrant.create!({
                 name: 'John Baptist',
               }.merge(overrides))
end
