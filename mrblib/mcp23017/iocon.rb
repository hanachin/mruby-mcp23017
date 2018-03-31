class MCP23017
  def iocon(value)
    @iocon = value
    @i2c.send(@bank::IOCON + value.chr)
  end

  # TODO provide convenient methods
end
