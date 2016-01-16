library IEEE;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Retraso1Hz is
    Port (
        CLK_IN		: in  STD_LOGIC;
        RESET 		: in  STD_LOGIC;
        CLK_OUT 	: out STD_LOGIC
    );
end Retraso1Hz;
 
architecture DivisorFrecuencia1HZ of Retraso1Hz is
    signal auxiliar: STD_LOGIC;
    signal contador: integer range 0 to 24999999 := 0;    -- valor: 24999999
begin
    Divisor_frecuencia: process (RESET, CLK_IN) begin     -- Lista de sensitividad
        if (RESET = '0') then
            auxiliar <= '0';
            contador <=  0;
        elsif rising_edge(CLK_IN) then
            if (contador = 24999999) then
                auxiliar <= NOT(auxiliar);
                contador <= 0;
            else
                contador <= contador+1;
            end if;
        end if;
    end process;
     
    CLK_OUT <= auxiliar;
end DivisorFrecuencia1HZ;
