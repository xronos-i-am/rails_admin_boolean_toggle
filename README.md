# RailsAdminBooleanToggle

Replace default boolean field behaviour with toggleable (https://github.com/rs-pro/rails_admin_toggleable). So boolean field now looks like rails_admin_toggleable but filter and sorting also working.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_admin_boolean_toggle'

Instead of:
  
    gem 'rails_admin_toggleable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_admin_boolean_toggle

## Usage

Add the toggleable action:

    RailsAdmin.config do |config|
      config.actions do
        ......
        toggle
      end
    end

Add boolean field:

    rails_admin do
      list do
        field :enabled, :boolean
        ...
      end
      ...
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
