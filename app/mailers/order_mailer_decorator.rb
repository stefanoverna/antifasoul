OrderMailer.class_eval do

  def confirm_email_to_admins(order, resend=false)
    @order = order
    subject = (resend ? "[RESEND] " : "")
    subject += "#{Spree::Config[:site_name]} Nuovo ordine! ##{order.number}"
    mail(:to => Role.find_by_name("admin").users.map(&:email), :subject => subject)
 end

end



