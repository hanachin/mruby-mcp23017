class MCP23017
  def write_intcona(value)
    @intcona = value
    @i2c.send(@bank::INTCONA + value.chr)
  end
  alias intcona= write_intcona

  def write_intconb(value)
    @intconb = value
    @i2c.send(@bank::INTCONB + value.chr)
  end
  alias intconb= write_intconb
end
