class MCP23017
  def write_ipola(value)
    @ipola = value
    @i2c.send(@bank::IPOLA + value.chr)
  end
  alias ipola= write_ipola

  def write_ipolb(value)
    @ipolb = value
    @i2c.send(@bank::IPOLB + value.chr)
  end
  alias ipolb= write_ipolb
end
