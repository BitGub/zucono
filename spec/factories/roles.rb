FactoryGirl.define do
  factory :admin_role, class: 'Role' do
    title "ADMINISTRATOR"
  end
  
  factory :manager_role, class: 'Role' do
    title "MANAGER"
  end
  
  factory :shift_manager_role, class: 'Role' do
    title "SHIFT_MANAGER"
  end
  
  factory :supplier_role, class: 'Role' do
    title "SUPPLIER"
  end
end