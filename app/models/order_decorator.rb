Order.class_eval do

  alias_method :old_finalize!, :finalize!

  def finalize!
    puts "ECCOCI"
    OrderMailer.confirm_email_to_admins(self).deliver
    :old_finalize!
  end

  def suca
    puts "SUCA"
  end

end


