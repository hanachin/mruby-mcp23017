class MCP23017
  def write_olata(value)
    @olata = value
    write(@bank::OLATA + value.chr)
  end
  alias olata= write_olata

  def write_olatb(value)
    @olatb = value
    write(@bank::OLATB + value.chr)
  end
  alias olatb= write_olatb
end
