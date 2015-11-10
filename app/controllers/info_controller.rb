class InfoController < ApplicationController
	def show
		render template: "info/#{params[:page]}"
    end

    def show_pdf
    	send_data(generate_pdf, :filename => "Resume.pdf", :type => "application/pdf")
    end
end
