class ChargeController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_free, only: [:free]

	def free
		project = Project.find(params[:project_id])
		current_user.subscriptions.create(project: project)
		redirect_to project
	end

	def pay
		project = Project.find(params[:project_id])

		customer = Stripe::Customer.create(
			:email => params[:stripeEmail],
			:card  => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
			:customer    => customer.id,
			:amount      => project.price_in_cents,
			:description => project.name,
			:currency    => 'usd'
		)

		if charge
			current_user.subscriptions.create(project: project)
			redirect_to project
		else
			redirect_to root
		end

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to project
	end

private
	def authenticate_free
	  if Project.find(params[:project_id]).price > 0
	    redirect_to project, alert: "You must pay for this project"
	  end
	end

end
