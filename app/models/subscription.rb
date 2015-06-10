class Subscription < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

after_create :send_receipt_email

private
	def send_receipt_email
		@user = User.find_by_email(self.user.email)
		@project = Project.find(self.project_id)

		MyMailer.new_receipt(@user,@project).deliver

		# To add different emails for FREE vs PAID courses

		# if @project.price == 0
		# 	MyMailer.new_FREE_receipt(@user,@project).deliver
		# else
		# 	MyMailer.new_PAID_receipt(@user,@project).deliver
		# end

	end

end
