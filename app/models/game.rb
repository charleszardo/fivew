class Game < ActiveRecord::Base
  has_one :who
  has_one :doing
  has_one :see
  has_one :when
  has_one :where
  has_one :with
end
