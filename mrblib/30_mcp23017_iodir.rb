class MCP23017
  def write_iodira(value)
    @iodira = value
    write(@bank::IODIRA, value.chr)
  end
  alias iodira= write_iodira

  def write_iodirb(value)
    @iodirb = value
    write(@bank::IODIRB, value.chr)
  end
  alias iodirb= write_iodirb
end
