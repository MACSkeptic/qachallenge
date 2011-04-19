class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
    end
  end

  def reset
    User.delete_all
    Interest.delete_all

    mauro = User.new :name => 'Mauro Santos', :email => 'mail1@thoughtworks.com', :admin => true
    barbara = User.new :name => 'Barbara flores', :email => 'mail2@thoughtworks.com', :admin => true
    mozair = User.new :name => 'Mozair', :email => 'mail3@thoughtworks.com', :admin => false

    mauro.save!
    barbara.save!
    mozair.save!

    render :text => 'done'
  end
end
