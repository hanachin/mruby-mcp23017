class MCP23017
  def write_gppua(value)
    @gppua = value
    @i2c.send(@bank::GPPUA + value.chr)
  end
  alias gppua= write_gppua

  def write_gppub(value)
    @gppub = value
    @i2c.send(@bank::GPPUB + value.chr)
  end
  alias gppub= write_gppub
end
