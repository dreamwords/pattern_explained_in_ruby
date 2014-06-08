Decorator Design Pattern
=========================

http://en.wikipedia.org/wiki/Decorator_pattern

# Real Life Examples

## Devise

devise modules

```ruby
class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :deactivatable, :oauth2_providable, :oauth2_password_grantable
end
```

```ruby
# Overwrites active_for_authentication? from Devise::Models::Activatable for deactivate purposes
# by verifying whether a user is active to sign in or not based on deactivated?
def active_for_authentication?
    !deactivated? && super
end
```
 
active_for_authentication? becomes a decorator method for User model, decorated by :confirmable, :deactivatable, :activatable etc.

 
## Rack

Rack is an excellent example how decorator pattern is used. The "call" is decorated by different rake middlewares.
 
 