class StaticPagesController < ApplicationController
def home
	@travel_var=Travel.limit(3).order("created_at DESC")
	@crafting_var=Crafting.limit(3).order("created_at DESC")
end
end