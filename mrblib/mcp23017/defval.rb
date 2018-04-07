class MCP23017
  def write_defvala(value)
    @defvala = value
    write(@bank::DEFVALA + value.chr)
  end
  alias defvala= write_defvala

  def write_defvalb(value)
    @defvalb = value
    write(@bank::DEFVALB + value.chr)
  end
  alias defvalb= write_defvalb
end
