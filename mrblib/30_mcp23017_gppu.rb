class MCP23017
  def write_gppua(value)
    @gppua = value
    write(@bank::GPPUA, value.chr)
  end
  alias gppua= write_gppua

  def write_gppub(value)
    @gppub = value
    write(@bank::GPPUB, value.chr)
  end
  alias gppub= write_gppub
end
