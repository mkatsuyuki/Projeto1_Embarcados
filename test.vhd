----TOP SYSTEM LEVEL DESCRIPTION-----
entity example_file is
    port ( ---the collection of all input and output
    ports in top level
    Clk : in std_logic; ---clock for synchronization
    rst : in std_logic; ---reset signals for new data
    input_port : in bit; ---input port
    output_port : out bit ---output port
    );
end example_file;

---architecture and behaviour of TOP SYSTEM
LEVEL DESCRIPTION in more detail
architecture behaviour of example_file is
---list signals which connect input to output ports here
---for example
signal intermediate_port : bit := '0'; --initialize to zero
begin ---start
    process(clk, rst) --process which is triggered by clock or reset pin
    begin
        if rst = '0' then --reset all output ports
            intermediate_port <= '0'; --initialize
            output_port <= '0'; --initialize
        elsif clk'event and clk = '1' then --operate on rising edge of clock
            intermediate_port <= not(input_port); --logical inverter
            output_port <= intermediate_port or input_port; --logical or operation
        end if;
    end process; --self-explanatory
end behaviour; --end of architectural behaviour

