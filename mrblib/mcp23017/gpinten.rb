class MCP23017
  def write_gpintena(value)
    @gpintena = value
    @i2c.send(@bank::GPINTENA + value.chr)
  end
  alias gpintena= write_gpintena

  def write_gpintenb(value)
    @gpintenb = value
    @i2c.send(@bank::GPINTENB + value.chr)
  end
  alias gpintenb= write_gpintena
end
