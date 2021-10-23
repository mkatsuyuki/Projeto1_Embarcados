library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- High Pass Filter Mask
-- -1 -1 -1
-- -1  8 -1
-- -1 -1 -1

-- Mask's Positions
--  1  2  3
--  4  5  6
--  7  8  9

entity filter is
  port (
    -- RGB input
    r_in_filter1 : in std_logic_vector(7 downto 0);
    r_in_filter2 : in std_logic_vector(7 downto 0);
    r_in_filter3 : in std_logic_vector(7 downto 0);
    r_in_filter4 : in std_logic_vector(7 downto 0);
    r_in_filter5 : in std_logic_vector(7 downto 0);
    r_in_filter6 : in std_logic_vector(7 downto 0);
    r_in_filter7 : in std_logic_vector(7 downto 0);
    r_in_filter8 : in std_logic_vector(7 downto 0);
    r_in_filter9 : in std_logic_vector(7 downto 0);

    -- RGB output
    r_out_filter : out std_logic_vector(7 downto 0);
    g_out_filter : out std_logic_vector(7 downto 0);
    b_out_filter : out std_logic_vector(7 downto 0)
  );
end filter; 

architecture rtl of filter is

  signal final      : std_logic_vector(7 downto 0);

  signal r_aux1 : unsigned(7 downto 0);
  signal r_aux2 : unsigned(7 downto 0);
  signal r_aux3 : unsigned(7 downto 0);
  signal r_aux4 : unsigned(7 downto 0);
  signal r_aux5 : unsigned(7 downto 0);
  signal r_aux6 : unsigned(7 downto 0);
  signal r_aux7 : unsigned(7 downto 0);
  signal r_aux8 : unsigned(7 downto 0);
  signal r_aux9 : unsigned(7 downto 0);

begin

  r_out_filter <= std_logic_vector(final);
  g_out_filter <= std_logic_vector(final);
  b_out_filter <= std_logic_vector(final);

  r_aux1 <= unsigned(((-1)*r_in_filter1)/9);
  r_aux2 <= unsigned(((-1)*r_in_filter1)/9);
  r_aux3 <= unsigned(((-1)*r_in_filter1)/9);

  r_aux4 <= unsigned(((-1)*r_in_filter1)/9);
  r_aux5 <= unsigned((8*r_in_filter1)/9);
  r_aux6 <= unsigned(((-1)*r_in_filter1)/9);
  
  r_aux7 <= unsigned(((-1)*r_in_filter1)/9);
  r_aux8 <= unsigned(((-1)*r_in_filter1)/9);
  r_aux9 <= unsigned(((-1)*r_in_filter1)/9);

  final <= std_logic_vector(r_aux1 +
                            r_aux2 + 
                            r_aux3 + 
                            r_aux4 + 
                            r_aux5 + 
                            r_aux6 + 
                            r_aux7 + 
                            r_aux8 + 
                            r_aux9 +);

end architecture;