ActiveAdmin.register Schedule do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  permit_params :team_name1, :team_name2, :date, :time, :no_of_seats, :available_seats, :booked_seats
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs "New Entry" do
      f.input :team_name1, :collection => Team.all.map{ |team| team.name}
      f.input :team_name2, :collection => Team.all.map{ |team| team.name}
      f.input :date, :as => :datepicker
      f.input :time
      f.input :no_of_seats
      f.input :available_seats
      f.input :booked_seats, :as => :hidden
    end
    f.actions
  end


end
