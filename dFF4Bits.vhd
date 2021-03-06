--Comentario--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Entidad--
entity dFF4Bits is
	PORT(D : in std_logic_vector(3 downto 0);
		  clk_In : in std_logic;
		  Q : out std_logic_vector(3 downto 0));
end dFF4Bits;

--Arquitectura--
architecture Behavioral of dFF4Bits is
	signal aux : std_logic_vector(3 downto 0) := "0000";
begin
	dFF4Bits : process(D, clk_In) begin
		if rising_edge(clk_In) then
			if(D /= "0000") then
				aux <= D;
			end if;
		end if;
	end process;
	
--Asignación de señales--
	
	Q <= aux;
end Behavioral;	