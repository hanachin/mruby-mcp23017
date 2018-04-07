class MCP23017
  def write_gpintena(value)
    @gpintena = value
    write(@bank::GPINTENA, value.chr)
  end
  alias gpintena= write_gpintena

  def write_gpintenb(value)
    @gpintenb = value
    write(@bank::GPINTENB, value.chr)
  end
  alias gpintenb= write_gpintena
end
