if @review.persisted?
  json.form json.partial!('reviews/form.html.erb', booking: @booking, review: Review.new)
  json.inserted_item json.partial!('bookings/review.html.erb', review: @review)
else
  json.form json.partial!('reviews/form.html.erb', restaurant: @restaurant, review: @review)
end
