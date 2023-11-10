# frozen_string_literal: true

require 'active_record'

class Animal < ActiveRecord::Base
  def self.males
    where(sex: 'male')
  end

  def self.females
    where(sex: 'female')
  end

  def self.monkeys
    where(species: 'monkey')
  end

  def self.parrots
    where(species: 'parrot')
  end
end
