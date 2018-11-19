class RepositoryNameController < ApplicationController

	def index
		if params[:name].present?
			name = params[:name]
			url = 'https://api.github.com/users/'+ name + '/repos?sort=updated'
			@response = HTTParty.get(url)
		end
	end

end
