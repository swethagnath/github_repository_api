class RepositoryNameController < ApplicationController

	def index
		if params[:name].present?
			url = "https://api.github.com/users/#{params[:name]}/repos?sort=updated"
			@response = HTTParty.get(url)
		end
	end

end
