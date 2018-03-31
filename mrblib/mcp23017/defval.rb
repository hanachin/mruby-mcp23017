class MCP23017
  def write_defvala(value)
    @defvala = value
    @i2c.send(@bank::DEFVALA + value.chr)
  end
  alias defvala= write_defvala

  def write_defvalb(value)
    @defvalb = value
    @i2c.send(@bank::DEFVALB + value.chr)
  end
  alias defvalb= write_defvalb
end
