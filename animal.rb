# frozen_string_literal: true

require 'active_record'

class Animal < ActiveRecord::Base
  scope :males, -> { where(sex: 'male') }
  scope :females, -> { where(sex: 'female') }

  scope :age_less_than, ->(max_age) { where('age < ?', max_age) }
  scope :age_greater_than, ->(min_age) { where('age > ?', min_age) }

  scope :monkeys, -> { where(species: 'monkey') }
  scope :parrots, -> { where(species: 'parrot') }
  scope :bears, -> { where(species: 'bear') }
  scope :squirrels, -> { where(species: 'squirrel') }
end
