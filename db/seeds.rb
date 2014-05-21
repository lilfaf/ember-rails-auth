# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.create!(password: '12345678', password_confirmation: '12345678', email: 'john@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'eric@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'paul@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'steve@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'sam@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'ludo@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'lou@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'cha@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'foo@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'bar@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'snap@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'sweet@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'bite@example.com')
User.create!(password: '12345678', password_confirmation: '12345678', email: 'kiss@example.com')

Doorkeeper::Application.create!(name: 'web', redirect_uri: 'urn:ietf:wg:oauth:2.0:oob')
