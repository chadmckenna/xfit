authorization do
  role :administrator do
    
  end
  
  role :developer do
    includes :administrator
  end
    
  role :owner do
    has_permission_on :owners_owners, :to => :manage
    has_permission_on :owners_users, :to => :update
    has_permission_on :owners_gym_workouts, :to => :manage
    has_permission_on :owners_gyms, :to => :manage
  end
  
  role :coach do
    has_permission_on :coaches_coaches, :to => :manage
    has_permission_on :coaches_users, :to => :update
    has_permission_on :coaches_gym_workouts, :to => :manage
    has_permission_on :coaches_gyms, :to => :update
  end
  
  role :client do
    has_permission_on :clients_clients, :to => :manage
    has_permission_on :clients_users, :to => :update
    has_permission_on :clients_workouts, :to => :manage
  end
end

privileges do
  privilege :manage, :includes => [:create, :read, :update, :delete, :show, :update_stuff]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => [:edit]
  privilege :delete, :includes => :destroy
end