---Maquina de estados del elevador
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Declaracion de variables--
entity Elevador is
	Port (teclado : in std_LOGIC_vector(3 downto 0);
			clk : in std_logic;
			piso : out std_LOGIC_vector(3 downto 0));
	end Elevador;
	
--Arquitectura elevador--
architecture Behavioral of Elevador is
	type estadosElevador is (piso1, piso2, piso3, piso4); 
	signal estadoActual : estadosElevador := piso1;
	signal estadoSiguiente: estadosElevador := piso1;
	signal pisos : std_LOGIC_vector(3 downto 0) := "0001";
	
begin 

	cambioPiso: process(clk)
	begin
		if rising_edge(clk) then
			estadoActual <= estadoSiguiente;
		end if;
	end process;
	
	asignaSalida: process(estadoActual,teclado)
	begin
		
		case estadoActual is
			when piso1 =>
				if (teclado = "0101") then
					pisos <= "0001";
					estadoSiguiente <= piso1;
				else
					pisos <= "0010";
					estadoSiguiente <= piso2;
				end if;
			
			when piso2 => 
				if (teclado = "0110") then
					pisos <= "0010";
					estadoSiguiente <= piso2;
				elsif (teclado = "0101") then 
					--piso <= "0001";
					pisos <= "0001";
					estadoSiguiente <= piso1;
				else
					estadoSiguiente <= piso3;
					pisos <= "0011";
				end if;
			
			when piso3 => 
				if (teclado = "1000") then
					pisos <= "0011";
					estadoSiguiente <= piso3;
				elsif (teclado = "1001") then 
					pisos <= "0100";
					estadoSiguiente <= piso4;
				else
					pisos <= "0010";
					estadoSiguiente <= piso2;
				end if;
				
			when piso4 =>
				if (teclado = "1001") then
					pisos <= "0100";
					estadoSiguiente <= piso4;
				else
					pisos <= "0011";
					estadoSiguiente <= piso3;
				end if;
			end case;
	end process;
	piso <= pisos;
end Behavioral;