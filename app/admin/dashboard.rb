ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.

    columns do
      column do
        panel " Recent Registered Producers" do
          table_for Producer.order("id desc").limit(5) do
            column("Name") { |producer| (producer.name) }
            column("Address") { |producer| (producer.address) }
            column("Phone number") { |producer| (producer.phone_number) }
            column("E-mail") { |producer| (producer.email) }
          end
        end
      end

      column do
        panel "Recent Users" do
          table_for User.order("id desc").limit(10).each do |_user|
            column(:email)    { |user| link_to(user.email, admin_user_path(user)) }
          end
        end
      end
    end
    # end of columns



  end
end
