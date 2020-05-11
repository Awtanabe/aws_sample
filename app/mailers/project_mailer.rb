class ProjectMailer < ApplicationMailer
  default from: "hoge@example.com"

  def post(user)
    @user = user
    mail(
      subject: "Postを作成しました",
      to: @user.email
    ) do |format|
      format.text
    end
  end
end
