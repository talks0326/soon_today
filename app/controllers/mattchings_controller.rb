class MattchingsController < ApplicationController
	skip_before_filter  :verify_authenticity_token
	def all

	end
end
