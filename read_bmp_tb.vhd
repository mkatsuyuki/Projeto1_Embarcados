library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity read_bmp_tb is 
end read_bmp_tb;

architecture sim of read_bmp_tb is
  constant ClockFrequency : integer := 1e6; -- 100 MHz
  constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
  signal Clk    : std_logic := '1';

  type header_type  is array (0 to 53) of character;

  type pixel_type is record
    red : std_logic_vector(7 downto 0);
    green : std_logic_vector(7 downto 0);
    blue : std_logic_vector(7 downto 0);
  end record;

  type row_type is array (integer range <>) of pixel_type;
  type row_pointer is access row_type;
  type image_type is array (integer range <>) of row_pointer;
  type image_pointer is access image_type;

  -- DUT signals
  signal r_in : std_logic_vector(7 downto 0);
  signal g_in : std_logic_vector(7 downto 0);
  signal b_in : std_logic_vector(7 downto 0);

  signal r_out : std_logic_vector(7 downto 0);
  signal g_out : std_logic_vector(7 downto 0);
  signal b_out : std_logic_vector(7 downto 0);

  -- FILTER signals
  --signal r_in_filter1 : std_logic_vector(7 downto 0);
    signal r_in_filter2 : std_logic_vector(7 downto 0);
  --signal r_in_filter3 : std_logic_vector(7 downto 0);
    signal r_in_filter4 : std_logic_vector(7 downto 0);
    signal r_in_filter5 : std_logic_vector(7 downto 0);
    signal r_in_filter6 : std_logic_vector(7 downto 0);
  --signal r_in_filter7 : std_logic_vector(7 downto 0);
    signal r_in_filter8 : std_logic_vector(7 downto 0);
  --signal r_in_filter9 : std_logic_vector(7 downto 0);

  signal r_out_filter : std_logic_vector(7 downto 0);
  signal g_out_filter : std_logic_vector(7 downto 0);
  signal b_out_filter : std_logic_vector(7 downto 0);

begin --begin architecture

  DUT :entity work.grayscale(rtl)
  port map (
    r_in => r_in,
    g_in => g_in,
    b_in => b_in,
    r_out => r_out,
    g_out => g_out,
    b_out => b_out
  );

  FILTER :entity work.filter(rtl)
  port map (
    Clk          => Clk,
    --r_in_filter1 => r_in_filter1,
    r_in_filter2 => r_in_filter2,
    --r_in_filter3 => r_in_filter3,
    r_in_filter4 => r_in_filter4,
    r_in_filter5 => r_in_filter5,
    r_in_filter6 => r_in_filter6,
    --r_in_filter7 => r_in_filter7,
    r_in_filter8 => r_in_filter8,
    --r_in_filter9 => r_in_filter9,

    r_out_filter => r_out_filter,
    g_out_filter => g_out_filter,
    b_out_filter => b_out_filter
  );

  -- Process for generating the clock
  Clk <= not Clk after ClockPeriod / 2;

  process
    type char_file is file of character;
    file bmp_file : char_file open read_mode is "input/test.bmp";
    file out_file : char_file open write_mode is "output/out.bmp";
    variable header : header_type;
    variable image_width : integer;
    variable image_height : integer;
    variable row : row_pointer;
    variable row_up : row_pointer;
    variable row_middle : row_pointer;
    variable row_down : row_pointer;
    variable row_filtered : row_pointer;
    variable image : image_pointer;
    variable image_filtered : image_pointer;
    variable padding : integer;
    variable char : character;

   begin

    -- Read entire headeri
    for i in header_type'range loop
      read(bmp_file, header(i));
    end loop;

    -- Check ID field
    assert header(0) = 'B' and header(1) = 'M'
      report "First two bytes are not ""BM"". This is not a BMP file"
      --severity failure;
		severity note;

    -- Check that the pixel array offset is as expected
    assert character'pos(header(10)) = 54 and
      character'pos(header(11)) = 0 and
      character'pos(header(12)) = 0 and
      character'pos(header(13)) = 0
      report "Pixel array offset in header is not 54 bytes"
      --severity failure;
		severity note;

    -- Check that DIB header size is 40 bytes,
    -- meaning that the BMP is of type BITMAPINFOHEADER
    assert character'pos(header(14)) = 40 and
      character'pos(header(15)) = 0 and
      character'pos(header(16)) = 0 and
      character'pos(header(17)) = 0
      report "DIB headers size is not 40 bytes, is this a Windows BMP?"
      --severity failure;
		severity note;

    -- Check that the number of color planes is 1
    assert character'pos(header(26)) = 1 and
      character'pos(header(27)) = 0
      report "Color planes is not 1" 
		--severity failure;
		severity note;

    -- Check that the number of bits per pixel is 24
    assert character'pos(header(28)) = 24 and
      character'pos(header(29)) = 0
      report "Bits per pixel is not 24" 
		--severity failure;
		severity note;

    -- Read image width
    image_width := character'pos(header(18)) +
      character'pos(header(19)) * 2**8 +
      character'pos(header(20)) * 2**16 +
      character'pos(header(21)) * 2**24;

    -- Read image height
    image_height := character'pos(header(22)) +
      character'pos(header(23)) * 2**8 +
      character'pos(header(24)) * 2**16 +
      character'pos(header(25)) * 2**24;

    report "image_width: " & integer'image(image_width) &
      ", image_height: " & integer'image(image_height);

    -- Number of bytes needed to pad each row to 32 bits
    padding := (4 - image_width*3 mod 4) mod 4;

    -- Create a new image type in dynamic memory
    image := new image_type(0 to image_height - 1);
    image_filtered := new image_type(0 to image_height - 1);

    for row_i in 0 to image_height - 1 loop

      -- Create a new row type in dynamic memory
      row := new row_type(0 to image_width - 1);

      for col_i in 0 to image_width - 1 loop

        -- Read blue pixel
        read(bmp_file, char);
        row(col_i).blue :=
          std_logic_vector(to_unsigned(character'pos(char), 8));

        -- Read green pixel
        read(bmp_file, char);
        row(col_i).green :=
          std_logic_vector(to_unsigned(character'pos(char), 8));

        -- Read red pixel
        read(bmp_file, char);
        row(col_i).red :=
          std_logic_vector(to_unsigned(character'pos(char), 8));

      end loop;

      -- Read and discard padding
      for i in 1 to padding loop
        read(bmp_file, char);
      end loop;

      -- Assign the row pointer to the image vector of rows
      image(row_i) := row;

    end loop;
    

    -- DUT test
    for row_i in 0 to image_height - 1 loop
      row := image(row_i);

      for col_i in 0 to image_width - 1 loop

        r_in <= row(col_i).red;
        g_in <= row(col_i).green;
        b_in <= row(col_i).blue;
        wait for 10 ns;

        row(col_i).red := r_out;
        row(col_i).green := g_out;
        row(col_i).blue := b_out;
      end loop;
    end loop;


    --Recria uma nova imagem exatamente igual ?? imagem original(j?? em escala de cinza)
    for row_i in 0 to image_height - 1 loop

      -- Create a new row type in dynamic memory
      row_filtered := new row_type(0 to image_width - 1);

      for col_i in 0 to image_width - 1 loop

        -- Read blue pixel
        row_filtered(col_i).blue := row(col_i).blue;

        -- Read green pixel
        row_filtered(col_i).green := row(col_i).green;

        -- Read red pixel
        row_filtered(col_i).red := row(col_i).red;

      end loop;

      -- Assign the row pointer to the image vector of rows
      image_filtered(row_i) := row_filtered;

    end loop;
    --

    -- Mask's Positions
    --  1  2  3
    --  4  5  6
    --  7  8  9

    -- FILTER Execution

    for row_i in 1 to image_height - 2 loop

      row_up := image(row_i-1);
      row_middle := image(row_i);
      row_down := image(row_i+1);

      row_filtered := image_filtered(row_i);

      for col_i in 1 to image_width - 2 loop

        --r_in_filter1 <= row_up(col_i-1).red;
        r_in_filter2 <= row_up(col_i).red;
        --r_in_filter3 <= row_up(col_i+1).red;

        r_in_filter4 <= row_middle(col_i-1).red;
        r_in_filter5 <= row_middle(col_i).red;
        r_in_filter6 <= row_middle(col_i+1).red;
 
        --r_in_filter7 <= row_down(col_i-1).red;
        r_in_filter8 <= row_down(col_i).red;
        --r_in_filter9 <= row_down(col_i+1).red;

        wait for 1000 ns;

        row_filtered(col_i).red := r_out_filter;
        row_filtered(col_i).green := g_out_filter;
        row_filtered(col_i).blue := b_out_filter;
      end loop;
    end loop;

    -- Write header to output file
    for i in header_type'range loop
      write(out_file, header(i));
    end loop;

    for row_i in 0 to image_height - 1 loop
      row_filtered := image_filtered(row_i);

      for col_i in 0 to image_width - 1 loop

        -- Write blue pixel
        write(out_file,
          character'val(to_integer(unsigned(row_filtered(col_i).blue))));

        -- Write green pixel
        write(out_file,
          character'val(to_integer(unsigned(row_filtered(col_i).green))));

        -- Write red pixel
        write(out_file,
          character'val(to_integer(unsigned(row_filtered(col_i).red))));

      end loop;

      deallocate(row);

      -- Write padding
      for i in 1 to padding loop
        write(out_file, character'val(0));
      end loop;

    end loop;

    deallocate(image);

    file_close(bmp_file);
    file_close(out_file);

    report "Simulation done. Check ""out.bmp"" image.";
    finish;
  end process;
end architecture;