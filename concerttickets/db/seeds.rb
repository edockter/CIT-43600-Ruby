r1 = Role.create!(:name => "Admin")
r2 = Role.create!(:name => "Customer")

# u1 = User.create(:username => "adminguy", :email => )
# u2 = User.create()

u1 = User.create(:username => "administrator", :password => "administrator", :password_confirmation => "administrator", :email => "admin@istrator.com")
u2 = User.create(:username => "customer", :password => "customer", :password_confirmation => "customer", :email => "cust@omer.com")


u1.roles << r1
u2.roles << r2

Venue.create!(:name => "Metro", :address => "3730 N Clark St", :city => "Chicago", :state => "IL", :zip => "60613")
Venue.create!(:name => "Hi-Fi", :address => "1043 Virginia Ave", :city => "Indianapolis", :state => "IN", :zip => "46203")

Concert.create!(:name => "Vulfpeck @ Chicago", :start_date => DateTime.new(2017, 05, 04), :end_date => DateTime.new(2017, 05, 06), price: 25.00,
  :tickets_available => 0, :venue_id => 1)
Concert.create!(:name => "Diane Coffee @ Indianapolis", :start_date => DateTime.new(2017, 07, 23), :end_date => DateTime.new(2017, 07, 23), :price => 12.00,
  :tickets_available => 142, :venue_id => 2)
Concert.create!(:name => "Dan Deacon @ Indianapolis", :start_date => DateTime.new(2017, 06, 13), :end_date => DateTime.new(2017, 06, 13), :price => 15.00,
  :tickets_available => 68, :venue_id => 2)
