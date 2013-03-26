ActiveAdmin.register Product do
  index do
  	column :title
  	column :description
  	column :image_url
  	column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price
      end
  end
   default_actions
end
end
