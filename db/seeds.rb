# Create role
admin_role = UserRole.create!(name: 'admin')
user_role = UserRole.create!(name: 'user')

# Create users
admin_user = User.create!(
  email: 'admin@example.com',
  password: 'adminadmin',
  username: 'admin'
)

one_user = User.create!(
  email: 'one_user@example.com',
  password: 'one_user',
  username: 'one_user'
)

second_user = User.create!(
  email: 'second_user@example.com',
  password: 'second_user',
  username: 'second_user'
)

Assignment.create!(users_id: admin_user.id, user_roles_id: admin_role.id)
Assignment.create!(users_id: one_user.id, user_roles_id: user_role.id)
Assignment.create!(users_id: second_user.id, user_roles_id: user_role.id)

puts '#################'
puts 'Seed has been successfully applied!'
