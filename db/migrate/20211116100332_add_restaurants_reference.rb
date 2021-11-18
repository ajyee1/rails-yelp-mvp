class AddRestaurantsReference < ActiveRecord::Migration[6.0]
  def change
    add_reference(:reviews, :restaurant, index: { name: "index_reviews_on_restaurant_id" }, null: false)
  end
end
