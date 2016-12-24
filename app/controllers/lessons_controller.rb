class LessonsController < ApplicationController
  respond_to :xml, :html

  before_action :seo

  def electricity
    @sections = %w(
      what_is_electricity
      conductors_and_insulators
      circuits
      wire
      switches
      wire_a_house
      make_a_motor
      ac_dc
      make_a_battery
      fruit_battery
      thermocouple
    )
  end

  def matter
    require 'periodic' # for displaying
    @sections = %w(
      forms_of_matter
      structure_of_an_atom
      transferring_of_electrons
      combining_atoms
      how_many_molecules_and_atoms
    )
  end

  def rock_cycle
    @sections = []
  end

  def weather_atmosphere
    @sections = %w(
      weather_atmosphere
      solar_energy
      special_winds
      pressure
      humidity
      storms
      uses_of_this_information
    )
  end

  def igneous_rock
    @sections = []
  end

  def mineral_identification
    @sections = []
  end

  def index
    set_meta title: <<-EOS.squish
      Middle School Science Rocks!
      Science lesson plans,
      Cool kids' science experiments
    EOS
  end

  def authors
  end

  def sitemap
    @paths = SITEMAP_PATHS
    respond_to do |format|
      format.xml { render }
      format.html { render 'sitemap.xml' }
    end
  end

  SITEMAP_PATHS =
    LessonsController.new.methods - ApplicationController.new.methods

  private

  def seo
    title = params[:action].titleize
    set_meta title: "#{title} - Middle School Science Rocks!"
  end

end
