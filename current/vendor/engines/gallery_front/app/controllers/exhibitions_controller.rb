class ExhibitionsController < ApplicationController

	layout 'front'

  def current
		do_the_job_for(:current)
	end

	def past
		do_the_job_for(:past)
	end

	def future
    do_the_job_for(:future)
	end

	def next
    do_the_job_for(:next)
	end

#	def submit_form
#
#	end
#
#	def submit_works
#		params[:submission]
#	end


	private

	def do_the_job_for(which)
		@artists = []
        
		if !(exhibitions=Exhibition.send(which)).empty? && !(@artists=ExhibitionsUser.all(:include => [:user => [:profile]], :conditions => { :exhibition_id => exhibitions.map{|e| e.id}, :state => 'published'}).map{ |e| e.user.profile}.uniq.sort {|x,y| x.full_name <=> y.full_name } ).empty?
			#raise @current_exposing_artists.map{ |e| e.id }.inspect
			#raise @artists.inspect
			if params[:id]
				@profile = Profile.find(params[:id])
			else
				@profile = @artists.rand
			end
			@exhibitions = @profile.user.exhibitions.send(which).published.uniq
			if params[:exhib_id]
				@exhibition = Exhibition.find(params[:exhib_id])
			else
				@exhibition = @exhibitions.first
			end
		end
		params[:which] = "#{which.to_s}/artists"
		respond_to do |format|
			format.html { render :template => 'exhibitions/show.html.erb' }
		end
	end


end
