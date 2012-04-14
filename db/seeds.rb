# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
admin = Role.create!(:name => 'administrator', :description => 'A system administrator. Full access to all features.')
client = Role.create!(:name => 'client', :description => 'A client that exists at a gym.')
coach = Role.create!(:name => 'coach', :description => 'A coach who works at a gym.')
owner = Role.create!(:name => 'owner', :description => 'An owner of a gym.')

User.create!(:email => 'administrator@xfit.com', :password => 'password', :role_id => admin.id)
User.create!(:email => 'client@xfit.com', :password => 'password', :role_id => client.id)
User.create!(:email => 'coach@xfit.com', :password => 'password', :role_id => coach.id)
User.create!(:email => 'owner@xfit.com', :password => 'password', :role_id => owner.id)

