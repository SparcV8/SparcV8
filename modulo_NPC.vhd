library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulo_NPC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           direccion1 : in  STD_LOGIC_VECTOR (31 downto 0);
           direccion2 : out  STD_LOGIC_VECTOR (31 downto 0));
end modulo_NPC;

architecture ARQ_modulo_NPC of modulo_NPC is

begin
	process (clk, reset, direccion1)
	begin
	if(rising_edge(clk))then
		if(reset = '1')then direccion2 <= (others => '0');
		else direccion2 <= direccion1;
		end if;
	end if;
	end process;

end ARQ_modulo_NPC;
