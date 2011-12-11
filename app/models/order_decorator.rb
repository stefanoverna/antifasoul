Order.class_eval do

  alias_method :original_finalize!, :finalize!

  def finalize!
    puts "ECCOCI"
    OrderMailer.confirm_email_to_admins(self).deliver
    original_finalize!
  end

  def suca
    puts "SUCA"
  end

end


