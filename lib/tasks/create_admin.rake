namespace :db do
  
  desc "fill roles table"
  task addroles: :environment do
    roles = Role.create!([{ title: "ADMINISTRATOR" }, { title: "SUPPLIER" }, { title: "MANAGER" }, { title: "SHIFT MANAGER" }])
  end
  desc "Create Admin user"
  task populate: :environment do
    role = Role.find_by(title: "ADMINISTRATOR")
    admin = User.create!(first_name: "Federico",
                        surname: "Begey",
                        email: "fbb@zucono.com",
                        password: "icecream",
                        password_confirmation: "icecream",
                        role: role)
  end                 
end