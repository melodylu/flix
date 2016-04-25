class MoviesController < ApplicationController
	def index
		@movies = ['Spiderman', 'Batman', 'Manman', 'Dinosaurs']
	end
end
