class InteractiveProgram
   @input2 = ""
  def self.build_source
    @input = gets
    exit  if @input.chomp == "q"
    if(@input.chomp.empty?)
      run_snippet(@input2)
      @input2  = ""
      build_source
    else
      @input2 << @input
      build_source
    end
  end
  def self.run_snippet(snipet)
    instance_eval(snipet) 
  end
end

