ActiveAdmin.register Purchase do

     index do
      column 'Email Address', :email
      column :amount
      column :description
      column :customer_id
      column :card
      column :created_at
      column :wish_id
      actions

      end


      form do |f|
      inputs 'Details' do
      input :email
      input :amount
       input :customer_id
        input :card
        input :wish_id
      input :description, label: "Description"
      li "Created at #{f.object.created_at}" unless f.object.new_record?
      end
      
   
      actions
  end

      
      before_filter do
      Purchase.class_eval do
         def to_param
          id.to_s
         end
        end
      end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end



  # create_table "purchases", force: true do |t|
  #   t.string   "email"
  #   t.integer  "amount"
  #   t.string   "description"
  #   t.string   "currency"
  #   t.string   "customer_id"
  #   t.string   "card"
  #   t.integer  "product_id"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  #   t.string   "uuid"
  #   t.integer  "wish_id"