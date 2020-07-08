ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do


    # Here is an example of a simple dashboard with columns and panels.

    columns do
      column do
         panel " RECENT REGISTERED PRODUCERS" do
          table_for Producer.order("id desc").where(status: 'accepted').limit(5) do
            column("Name") { |producer| (producer.name) }
            column("Address") { |producer| (producer.address) }
            column("Phone number") { |producer| (producer.phone_number) }
            column("E-mail") { |producer| (producer.email) }
          end
        end
      end
    end

     span link_to("Home", root_path)

   # columns do
    #  column do
     #    panel "PRODUCERS PENDING REQUESTS" do
      #    table_for Producer.where(status: 'unconfirmed') do |producer|
       #     column("Name") { |producer| (producer.name) }
        #    column("Address") { |producer| (producer.address) }
         #   column("Phone number") { |producer| (producer.phone_number) }
          #  column("E-mail") { |producer| (producer.email) }
           # column span: 2 do |producer|
            #  span link_to("Accept", accept_producer_path(producer))
          # end.join(', ').html_safe
           # column do
             # span link_to("Decline", decline_producer_path(producer))
           # end.join(', ').html_safe
           # { (span ) (span ) }

             # accept_producer_path(producer)
             # decline_producer_path(producer)
         # end
       # end
     # end
   # end



    # columns do
    # column do
     #  panel "Producer request" do

      # end
     # end
    # end
      # end of columns

      #column("Accept") { |producer| (producer.status == 'accepted') }
           # column("Decline") { |producer| (producer.status == 'declined') }

  end
end
