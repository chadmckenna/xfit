module ApplicationHelper
  
  def nav(user)
    if user
      if user.is_owner?
        render :partial => 'shared/owner_nav'
      elsif user.is_coach?
        render :partial => 'shared/coach_nav'
      elsif
        render :partial => 'shared/client_nav'
      end
    end 
  end
  
end
