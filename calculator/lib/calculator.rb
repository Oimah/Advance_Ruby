class String
  
  def calculate?
    gsub!(/[a-zA-Z!,^#@~&=_;:]/, "")
    instance_eval(self)
  end

end