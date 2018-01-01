json.set! :post do
  json.extract! @post, :id, :book_name, :title, :story_1, :story_2, :story_3, :story_4, :created_at, :updated_at
end