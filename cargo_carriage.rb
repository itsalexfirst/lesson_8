# frozen_string_literal: true

class CargoCarriage < Carriage
  attr_reader :total_volume, :volume, :free_volume

  def initialize(number, volume)
    super(number, 'cargo')
    @total_volume = volume
    @volume = 0
    @free_volume = volume
  end

  def load_cargo(volume)
    return unless volume <= @free_volume

    @volume += volume
    @free_volume -= volume
  end
end
