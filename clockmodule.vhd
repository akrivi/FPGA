library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clockmodule is  
  port(CLOCK_50  : in std_logic;
       VGA_R : out std_logic_VECTOR (7 downto 0);
       VGA_G : out std_logic_VECTOR (7 downto 0);
       VGA_B : out std_logic_VECTOR (7 downto 0);
       VGA_HS    : out std_logic;
       VGA_VS   : out std_logic;
		 VGA_CLK : out std_logic;
		 VGA_BLANK_N : out std_logic;
		 VGA_SYNC_N : out std_logic;
		 LEDR : out std_logic_vector(9 downto 0));

end clockmodule;

architecture Behavioral of clockmodule is

signal clk25              : std_logic;  
signal horizontal_counter : std_logic_vector (9 downto 0);  
signal vertical_counter   : std_logic_vector (9 downto 0);
signal outbyte : std_logic_vector (7 downto 0);
signal nullsig :  STD_LOGIC_VECTOR (7 DOWNTO 0);
component memoryfirst
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

begin
VGA_CLK <= clk25;
VGA_BLANK_N <=horizontal_counter(0) ;
VGA_SYNC_N <= horizontal_counter(0);
-- generate a 25Mhz clock
process (CLOCK_50)  
begin
  
  
  if CLOCK_50'event and CLOCK_50='1' then
    if (clk25 = '0') then
      clk25 <= '1';
    else
      clk25 <= '0';
    end if;
  end if;
end process;

process (clk25)  
begin  
  LEDR (7 downto 0) <= outbyte;
  if clk25'event and clk25 = '1' then
    if (horizontal_counter >= "0010010000" ) -- 144
    and (horizontal_counter < "1100010000" ) -- 784
    and (vertical_counter >= "0000100111" ) -- 39
    and (vertical_counter < "1000000111" ) -- 519
    then

     --here you paint!!
      VGA_R <= "11111111";
       VGA_G <= outbyte;
       VGA_B <= "00000000";

    else
       VGA_R <= "00000000";
       VGA_G <="00000000";
       VGA_B<= "00000000";
    end if;
    if (horizontal_counter > "0000000000" )
      and (horizontal_counter < "0001100001" ) -- 96+1
    then
      VGA_HS  <= '0';
    else
      VGA_HS  <= '1';
    end if;
    if (vertical_counter > "0000000000" )
      and (vertical_counter < "0000000011" ) -- 2+1
    then
      VGA_VS  <= '0';
    else
      VGA_VS  <= '1';
    end if;
    horizontal_counter <= horizontal_counter+"0000000001";
    if (horizontal_counter="1100100000") then
      vertical_counter <= vertical_counter+"0000000001";
      horizontal_counter <= "0000000000";
    end if;
    if (vertical_counter="1000001001") then
      vertical_counter <= "0000000000";
    end if;
  end if;
end process;



memoryfirst_inst : memoryfirst PORT MAP (
		data	 => outbyte,
		rdaddress	 => vertical_counter & "000000",
		rdclock	 => clk25,
		wraddress	 => "0000000000000000",
		wrclock	 => '0',
		wren	 => '0',
		q	 => nullsig
	);


end Behavioral;  