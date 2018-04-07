class MCP23017
  def iocon(value)
    @iocon = value
    write(@bank::IOCON, value.chr)
  end

  # TODO provide convenient methods
end
