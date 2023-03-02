# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

## Users
User.create([
              {
                username: 'alessio',
                name: 'Alessio',
                surname: 'Saltarin',
                password: 'doctor'
              },
              {
                username: 'guest',
                name: 'John',
                surname: 'Doe',
                password: 'guest'
              }
            ])

## Items
Item.create([
              {
                part_number: '1298011',
                description: 'Mart cable 21'
              },
              {
                part_number: '1298012',
                description: 'Mart cable 23'
              },
              {
                part_number: '1298013',
                description: 'Mart cable 25'
              },
              {
                part_number: '1298014',
                description: 'Mart cable 27'
              },
              {
                part_number: '1298015',
                description: 'Loreen cable 14'
              },
              {
                part_number: '1298016',
                description: 'Loreen cable 16'
              }
            ])
