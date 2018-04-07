class MCP23017
  INPUT_HIGH = true
  INPUT_LOW = false
  SUPPORTED_FREQ = [
    100_000,
    400_000,
    1_700_000
  ]

  DEFAULT_BANK = AddressBank0

  attr_reader :addr, :bank
  attr_reader :iodira, :iodirb, :ipola, :ipolb, :gpintena, :gpintenb, :defvala, :defvalb, :intcona, :intconb, :iocon, :gppua, :gppub, :intfa, :intfb, :intcapa, :intcapb, :gpioa, :gpiob, :olata, :olatb

  def initialize(i2c, opts = {})
    @i2c = i2c
    @addr = 0x20
    @addr += (1 << 0) if opts.fetch(:a0) == INPUT_HIGH
    @addr += (1 << 1) if opts.fetch(:a1) == INPUT_HIGH
    @addr += (1 << 2) if opts.fetch(:a2) == INPUT_HIGH
    @bank = DEFAULT_BANK
    @iodira = @iodirb = 0b1111_1111
    @ipola = @ipolb = @gpintena = @gpintenb = @defvala = @defvalb = @intcona = @intconb = @iocon = @gppua = @gppub = @intfa = @intfb = @intcapa = @intcapb = @gpioa = @gpiob = @olata = @olatb = 0b0000_0000
    @pins = {}
  end

  def [](pin)
    @pins[pin] ||=
      case pin
      when GPA0, GPA1, GPA2, GPA3, GPA4, GPA5, GPA6, GPA7
        PinPortA.new(self, pin)
      when GPB0, GPB1, GPB2, GPB3, GPB4, GPB5, GPB6, GPB7
        PinPortB.new(self, pin)
      end
  end

  def read_pins
    if @bank == AddressBank0
      read(@bank::GPIOA, 2)
    else
      read(@bank::GPIOA) + read(@bank::GPIOB)
    end
  end

  # TODO: support read-only register
  #       - intfa/intfb
  #       - intcapa/intcapb

  private

  def write(reg, data)
    @i2c.write(@addr, reg, data)
  end

  def read(reg, n = 1)
    @i2c.read(@addr, reg, n)
  end
end
