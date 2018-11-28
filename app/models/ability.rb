class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.admin == 'normal' && user.ativo == 'ativo'
        can :access, :rails_admin
        can :dashboard
        can :manage, Reserva, user_id: user.id
        can :manage, Manutencao, user_id: user.id
        can :manage, Pcd, user_id: user.id
      elsif user.admin == 'admin'
        can :manage, :all
      end
    end
  end
end
