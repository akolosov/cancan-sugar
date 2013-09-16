[![Gem Version](https://badge.fury.io/rb/cancan-sugar.png)](http://badge.fury.io/rb/cancan-sugar)

CanCan-Sugar
============

Syntax sugar for gem CanCan. Inspired by gem Padrino-CanCan.


# Installation

    $ gem install cancan-sugar

# Gemfile

    gem "cancan-sugar"

# Usage

    class Ability
      include CanCan::Ability
    
      def initialize(user)
        user ||= User.new
    
        permissions_for user, as: :admin do
          can :manage, :all
        end
    
        permissions_for user, as: [:manager, :user] do
          can :update, User, id: user.id
          can :read, Document
          can :update, Document, user_id: user.id
          can :create, Document
        end
        
        permissions_for user, as: :manager do
          can :comment, Document
          can :create, Comment
          can :create, DocumentComment
          can :create, Incedent
          can :update, Incedent, initiator_id: user.id
        end
    
      end
    end



# License

(C)opyLeft & (C)odeRight Alexey Kolosov aka mr.huNTer <alexey.kolosov@gmail.com>

"CanCan-Sugar" released without warranty under the terms of the Artistic License 2.0
http://www.opensource.org/licenses/artistic-license-2.0


