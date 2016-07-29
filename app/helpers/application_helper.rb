module ApplicationHelper
  
  def is_owner?()
        if current_user.role == 'Owner'
        return true
      else
  return false
  end
  end

  def is_patron?()
        if current_user.role == 'Patron'
        return true
      else
  return false
  end
  end
end


