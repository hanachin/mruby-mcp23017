class MCP23017
  class PinPortB < Pin
    private

    def _write_iodir(v)
      @mcp23017.write_iodirb(v)
    end

    def _write_ipol(v)
      @mcp23017.write_ipolb(v)
    end

    def _write_gpinten(v)
      @mcp23017.write_gpintenb(v)
    end

    def _write_defval(v)
      @mcp23017.write_defvalb(v)
    end

    def _write_intcon(v)
      @mcp23017.write_intconb(v)
    end

    def _write_gppu(v)
      @mcp23017.write_gppub(v)
    end

    def _write_gpio(v)
      @mcp23017.write_gpiob(v)
    end

    def _write_olat(v)
      @mcp23017.write_olatb(v)
    end

    def _iodir
      @mcp23017.iodirb
    end

    def _ipol
      @mcp23017.ipolb
    end

    def _gpinten
      @mcp23017.gpintenb
    end

    def _defval
      @mcp23017.defvalb
    end

    def _intcon
      @mcp23017.intconb
    end

    def _gppu
      @mcp23017.gppub
    end

    def _gpio
      @mcp23017.gpiob
    end

    def _olat
      @mcp23017.olatb
    end
  end
end
