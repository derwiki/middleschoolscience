class LessonsController < ApplicationController
  def electricity
    @sections = %w(what_is_electricity conductors_and_insulators circuits wire
                   switches wire_a_house make_a_motor ac_dc make_a_battery
                   fruit_battery thermocouple)
    set_meta title: 'Middle School Science Rocks! Electricity for Kids'
  end

  def matter
    require 'periodic' # for displaying
    @sections = %w(forms_of_matter structure_of_an_atom
                   transferring_of_electrons combining_atoms
                   how_many_molecules_and_atoms)
    set_meta title: 'Middle School Science Rocks! Matter'
  end

  def rock_cycle
    @sections = []
    set_meta title: 'Middle School Science Rocks! Rock Cycle'
  end

  def weather_atmosphere
    @sections = %w(weather_atmosphere solar_energy special_winds pressure
                   humidity storms uses_of_this_information)
    set_meta title: 'Middle School Science Rocks! Weather and Atmosphere'
  end

  def igneous_rock
    @secionts = []
    set_meta title: 'Middle School Science Rocks! Igneous Rocks'
  end

  def index
    set_meta title: <<-EOS.squish
      Middle School Science Rocks!
      Science lesson plans,
      Cool kids science experiments
    EOS
  end

  def authors
    set_meta title: 'Middle School Science Rocks! About the authors'
  end
end
