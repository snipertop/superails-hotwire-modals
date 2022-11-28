class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # self.primary_abstract_class = true
  primary_abstract_class

  connects_to database: { writing: :primary, reading: :primary_replica }
end
