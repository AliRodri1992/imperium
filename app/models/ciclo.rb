class Ciclo < ApplicationRecord
  def get_ciclo
    self.año_inicio + "-" +self.año_fin
  end
end
