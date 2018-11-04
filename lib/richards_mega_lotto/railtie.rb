require 'rails'
require 'richards_mega_lotto/helper'

module MegaLotto
  class Railtie < Rails::Railtie
    initializer "mega_lotto.action_view" do
      ActiveSupport.on_load(:action_controller) do
        include RichardsMegaLotto::Helper
      end
    end

    rake_tasks do
      load 'richards_mega_lotto/tasks/richards_mega_lotto.rake'
    end
  end
end