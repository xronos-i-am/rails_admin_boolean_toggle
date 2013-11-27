module RailsAdminBooleanToggle
  class Engine < ::Rails::Engine
    config.to_prepare do
      RailsAdmin::Config::Fields::Types::Boolean.class_eval do 
        include RailsAdmin::Engine.routes.url_helpers

        register_instance_option :view_helper do
          :check_box
        end

        register_instance_option :pretty_value do
          def g_link(fv, on, badge)
            bindings[:view].link_to(
              fv.html_safe,
              toggle_path(model_name: @abstract_model, id: bindings[:object].id, method: name, on: on.to_s),
              method: :post,
              class: 'badge ' + badge
            )
          end

          def out
            if read_only?
              return case value
                when nil
                  I18n.t('admin.toggle.pretty_undef')
                when false
                  I18n.t('admin.toggle.pretty_no')
                when true
                  I18n.t('admin.toggle.pretty_yes')
                else
                  value
              end
            end

            case value
              when nil
                g_link('&#x2718;', 0, 'badge-important') + g_link('&#x2713;', 1, 'badge-success')
              when false
                g_link('&#x2718;', 1, 'badge-important')
              when true
                g_link('&#x2713', 0, 'badge-success')
              else
                %{<span class="badge">-</span>}
            end
          end

          out.html_safe
        end

        register_instance_option :export_value do
          value.inspect
        end

        # Accessor for field's help text displayed below input field.
        register_instance_option :help do
          ""
        end
      end
    end
  end
end