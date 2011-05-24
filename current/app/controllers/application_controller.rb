class ApplicationController < ActionController::Base

	# Configuration
  include BlankConfiguration
  # Library used by the 'restful_authentcation' (and providing 'current_user' method)
	include AuthenticatedSystem
  # Captcha Management
	include YacaphHelper
	# Mixin used to specify the controller you want to manage with ExceptionNotification (all the controllers here)
	include ExceptionNotifiable if BlankConfiguration::ConfigFile.open('sa_config.yml').hash['sa_exception_notifier_activated'] == 'true'

  before_filter :get_configuration
	
	helper :yacaph, :websites

	# Filter checking authentication with 'is_logged' method
  before_filter :logged_in?






def create_pdf(invoice_id="",invoice_number="",invoice_date="",invoice_full_address = " " ,invoice_user_fullname = " " ,invoice_competition_title="",invoice_full_amount="",note="")#{invoice.sent_at.strftime("%d %b %Y")}   #{invoice.user.profile.full_address}
				
				headers, body = nil, nil  
               dir = File.expand_path(File.dirname(__FILE__))
               Prawn::Document.generate("#{RAILS_ROOT}/public/pdf_invoice/#{invoice_id}invoice.pdf", :page_layout => :landscape) do
               bsg = "#{RAILS_ROOT}/public/images/bsg.png"  
               image bsg, :at => [10,540] ,:width=>100,:height=>100
               invoice = "#{RAILS_ROOT}/public/images/invoice.png"  
               image invoice, :at => [470,530] 
               box = Prawn::Text::Box.new("INVOICE NO:",:width=>80,:height=>20,:overflow=>:ellipses,:at=>[580, 470],:align=>:left,:document=>self)
               box.render
               number = invoice_number
               box = Prawn::Text::Box.new(number,    :width    => 80,:height   => 20, :overflow => :ellipses, :at => [660, 470], :align    => :left, :document => self)
               box.render
               box = Prawn::Text::Box.new("DATE:",    :width    => 80,:height   => 20, :overflow => :ellipses, :at => [580, 455], :align    => :left, :document => self)
               box.render
               box = Prawn::Text::Box.new("#{invoice_date}",    :width    => 80,:height   => 20, :overflow => :ellipses, :at => [660, 455], :align    => :left, :document => self)
               box.render
               box = Prawn::Text::Box.new("Brunswick Street Gallery 322 Brunswick St,Fitzroy 0419 390 478 mark@bsgart.com.au www.bsgart.com.au     ABN:  35 108 985 002",    :width    => 140,:height   => 100, :overflow => :ellipses, :at => [10, 400], :align    => :left, :document => self)
               box.render
               box = Prawn::Text::Box.new("Bill To :-",    :width    => 130,:height   => 100, :overflow => :ellipses, :at => [250, 380], :align    => :left, :document => self)
               fill_color("80b2ff")
               box.render
               
               box = Prawn::Text::Box.new("#{invoice_user_fullname},",    :width    => 130,:height   => 100, :overflow => :ellipses, :at => [250, 360], :align    => :left, :document => self)
               fill_color("000000")
               box.render
               
               box = Prawn::Text::Box.new("#{invoice_full_address}",    :width    => 130,:height   => 100, :overflow => :ellipses, :at => [250, 350], :align    => :left, :document => self)
               fill_color("000000")
               box.render
               
               box = Prawn::Text::Box.new("Ship To :-",    :width    => 130,:height   => 100, :overflow => :ellipses, :at => [400, 380], :align    => :left, :document => self)
               fill_color("80b2ff")
               box.render
               
               
               box = Prawn::Text::Box.new("#{invoice_user_fullname},",    :width    => 130,:height   => 100, :overflow => :ellipses, :at => [400, 360], :align    => :left, :document => self)
               fill_color("000000")
               box.render
               
               box = Prawn::Text::Box.new("#{invoice_full_address}",    :width    => 130,:height   => 100, :overflow => :ellipses, :at => [400, 350], :align    => :left, :document => self)
               fill_color("000000")
               box.render
               
               move_down 250
               table [["#{invoice_date}", "#{invoice_user_fullname}", "#{invoice_competition_title}", "$#{invoice_full_amount}"],],
                      :position => :left,
                      :headers => ['Start Date', 'Name', 'Description', 'Price'],
                      :column_widths => { 0 => 160, 1 => 210, 2 => 190, 3 => 50},
                      :border=>:none,
                      :border_width       => 0,
                      :header_color => '0147FA',
                      :header_text_color  => "ffffff"
            fill_color("e6f0ff")
            fill_and_stroke_rectangle([8,185],400,125)
            fill_and_stroke_rectangle([8,54],300,80)
            box = Prawn::Text::Box.new("Notes:",    :width    => 600,:height   => 100, :overflow => :ellipses, :at => [20, 40], :align    => :left, :document => self)
            fill_color("000000")
            box.render
            fill_color("ffffff")
        
            box = Prawn::Text::Box.new("#{note}",    :width    => 250,:height   => 90, :overflow => :truncate, :at => [22, 28], :align    => :left, :document => self)
            fill_color("000000")
            box.render
            
            box = Prawn::Text::Box.new("PAYMENT Options: CREDIT CARD ONLINE                                                                   Paypal                                                                 Cash                                                                  Cheque                                                 www.bsgart.com.au PAYPAL mark@bsgart.com.au BANK DEPOSIT Brunswick St Gallery, CBA, bsb 063212, AC# 1017 2051 Please make sure your name is on the transaction",    :width    => 300,:height   => 230, :overflow => :ellipses, :at => [10, 178], :align    => :left, :document => self)
            fill_color("000000")
            box.render
            fill_color("0147FA")
            fill_and_stroke_rectangle([490,185],120,70)
            box = Prawn::Text::Box.new("TOTAL:#{invoice_full_amount}",    :width    => 220,:height   => 13, :overflow => :ellipses, :at => [490, 175], :align    => :left, :document => self)
            fill_color("ffffff")
            box.render
            fill_color("0147FA")
            #fill_and_stroke_rectangle([490,42],120,13)
            box = Prawn::Text::Box.new("GST:#{(invoice_full_amount*10/100).to_i}",    :width    => 220,:height   => 13, :overflow => :shrink_to_fit, :at => [490, 155], :align    => :left, :document => self)
            fill_color("ffffff")
            box.render
            fill_color("0147FA")
           # fill_and_stroke_rectangle([490,26],120,13)
            
            box = Prawn::Text::Box.new("AMOUNT DUE:#{invoice_full_amount+(invoice_full_amount*10/100).to_i}",    :width    => 220,:height   => 13, :overflow => :ellipses, :at => [490, 135], :align    => :left, :document => self)
            fill_color("ffffff")
            box.render
   
            end#do end
end	#method end


end

