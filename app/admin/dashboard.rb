ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do


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
    end

    columns do
     column do
       panel "Producer request" do
        span link_to "Accept", producer_producers_path(@producer)
        span link_to "Decline"
       end
      end
     end
      # end of columns

  end
end
