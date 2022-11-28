class BooksRecord < ApplicationRecord
    self.abstract_class = true

    connects_to database: { writing: :books, reading: :books_replica }
end
  