# frozen_string_literal: true

require 'active_record'
require_relative 'animal'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'zoo.sqlite3')

class CreateAnimalModel < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :species
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end

CreateAnimalModel.migrate :up unless ActiveRecord::Base.connection.table_exists?(:animals)

require_relative 'seed' if Animal.all.empty?
