class MCP23017
  class Pin
    def initialize(mcp23017, pin)
      @mcp23017 = mcp23017
      @pin = pin
      @mask = nil
    end

    def write_iodir(direction)
      case direction
      when ::MCP23017::IODIR_IN
        _write_iodir(_iodir | mask)
      when ::MCP23017::IODIR_OUT
        _write_iodir(_iodir & ~mask)
      end
    end
    alias iodir= write_iodir

    def write_ipol(polarity)
      case polarity
      when ::MCP23017::IPOL_OPPOSITE
        _write_ipol(_ipol | mask)
      when ::MCP23017::IPOL_SAME
        _write_ipol(_ipol & ~mask)
      end
    end
    alias ipol= write_ipol

    def write_gpinten(interrupt)
      case interrupt
      when ::MCP23017::GPINTEN_ENABLE
        _write_gpinten(_gpinten | mask)
      when ::MCP23017::GPINTEN_DISBLE
        _write_gpinten(_gpinten & ~mask)
      end
    end
    alias gpinten= write_gpinten

    def write_defval(default_value)
      case default_value
      when 1
        _write_defval(_defval | mask)
      when 0
        _write_defval(_defval & ~mask)
      end
    end
    alias defval= write_defval

    def write_intcon(control)
      case control
      when ::MCP23017::INTCON_DEFVAR
        _write_intcon(_intcon | mask)
      when ::MCP23017::INTCON_PREVIOUS
        _write_intcon(_intcon & ~mask)
      end
    end
    alias intcon= write_intcon

    def write_gppu(pullup)
      case pullup
      when ::MCP23017::GPPU_ENABLE
        _write_gppu(_gppu | mask)
      when ::MCP23017::GPPU_DISABLE
        _write_gppu(_gppu & ~mask)
      end
    end
    alias gppu= write_gppu

    def write_gpio(logic)
      case logic
      when ::MCP23017::LOGIC_HIGH
        _write_gpio(_gpio | mask)
      when ::MCP23017::LOGIC_LOW
        _write_gpio(_gpio & ~mask)
      end
    end
    alias gpio= write_gpio

    def write_olat(logic)
      case logic
      when ::MCP23017::LOGIC_HIGH
        _write_olat(_olat | mask)
      when ::MCP23017::LOGIC_LOW
        _write_olat(_olat & ~mask)
      end
    end
    alias olat= write_olat

    private

    def mask
      @mask ||=
        case @pin
        when ::MCP23017::GPA0, ::MCP23017::GPB0
          0b0000_0001
        when ::MCP23017::GPA1, ::MCP23017::GPB1
          0b0000_0010
        when ::MCP23017::GPA2, ::MCP23017::GPB2
          0b0000_0100
        when ::MCP23017::GPA3, ::MCP23017::GPB3
          0b0000_1000
        when ::MCP23017::GPA4, ::MCP23017::GPB4
          0b0001_0000
        when ::MCP23017::GPA5, ::MCP23017::GPB5
          0b0010_0000
        when ::MCP23017::GPA6, ::MCP23017::GPB6
          0b0100_0000
        when ::MCP23017::GPA7, ::MCP23017::GPB7
          0b1000_0000
        end
    end
  end
end
