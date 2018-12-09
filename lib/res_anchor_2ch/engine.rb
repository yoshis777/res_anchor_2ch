module ResAnchor2ch
  class Engine < ::Rails::Engine
    isolate_namespace ResAnchor2ch
    initializer 'res_anchor_2ch.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include ResAnchor2ch::ViewHelper
      end
    end
  end
end
