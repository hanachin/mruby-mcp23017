class MCP23017
  def write_gpioa(value)
    @gpioa = value
    write(@bank::GPIOA, value.chr)
  end
  alias gpioa= write_gpioa

  def write_gpiob(value)
    @gpiob = value
    write(@bank::GPIOB, value.chr)
  end
  alias gpiob= write_gpiob
end
