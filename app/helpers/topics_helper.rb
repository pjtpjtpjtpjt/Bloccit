module TopicsHelper
    
    def user_is_authorized_for_topics?
    current_user && current_user.admin?
    end
    
    
    def user_is_authorized_for_topics_edit?
      current_user && current_user.admin? || current_user && current_user.moderator?
    end
    
    
    def user_is_authorized_for_topic?(topic)
      current_user && (current_user.admin?)
    end
    
end
