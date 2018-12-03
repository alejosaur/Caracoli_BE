class HarvestLot < ApplicationRecord
  belongs_to :lot
  belongs_to :harvest
end
