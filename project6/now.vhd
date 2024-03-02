library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity F_Function is
    Port ( X, Y, Z : in STD_LOGIC;
           F : out STD_LOGIC;
           reset : in STD_LOGIC);
end F_Function;

architecture Behavioral of F_Function is
begin
    process(X, Y, Z, reset)
        variable temp : STD_LOGIC;
    begin
        if reset = '1' then
            F <= '0';
        else
            temp := not (X or Y or Z) and (X or Y or Z);
            F <= temp or (not X and not Y and Z);
        end if;
    end process;
end Behavioral;
