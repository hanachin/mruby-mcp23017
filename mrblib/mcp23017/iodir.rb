class MCP23017
  def write_iodira(value)
    @iodira = value
    @i2c.send(@bank::IODIRA + value.chr)
  end
  alias iodira= write_iodira

  def write_iodirb(value)
    @iodirb = value
    @i2c.send(@bank::IODIRB + value.chr)
  end
  alias iodirb= write_iodirb
end
