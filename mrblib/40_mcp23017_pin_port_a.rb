class MCP23017
  class PinPortA < Pin
    private

    def _write_iodir(v)
      @mcp23017.write_iodira(v)
    end

    def _write_ipol(v)
      @mcp23017.write_ipola(v)
    end

    def _write_gpinten(v)
      @mcp23017.write_gpintena(v)
    end

    def _write_defval(v)
      @mcp23017.write_defvala(v)
    end

    def _write_intcon(v)
      @mcp23017.write_intcona(v)
    end

    def _write_gppu(v)
      @mcp23017.write_gppua(v)
    end

    def _write_gpio(v)
      @mcp23017.write_gpioa(v)
    end

    def _write_olat(v)
      @mcp23017.write_olata(v)
    end

    def _iodir
      @mcp23017.iodira
    end

    def _ipol
      @mcp23017.ipola
    end

    def _gpinten
      @mcp23017.gpintena
    end

    def _defval
      @mcp23017.defvala
    end

    def _intcon
      @mcp23017.intcona
    end

    def _gppu
      @mcp23017.gppua
    end

    def _gpio
      @mcp23017.gpioa
    end

    def _olat
      @mcp23017.olata
    end
  end
end
