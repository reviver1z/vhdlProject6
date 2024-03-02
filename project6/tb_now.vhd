library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity F_Function_Testbench is
end F_Function_Testbench;

architecture Behavioral of F_Function_Testbench is
    signal X, Y, Z, F, reset : STD_LOGIC;

    component F_Function
        Port ( X, Y, Z : in STD_LOGIC;
               F : out STD_LOGIC;
               reset : in STD_LOGIC);
    end component;

begin
    UUT: F_Function port map (X, Y, Z, F, reset);

    -- Stimulus process
    stimulus: process
    begin
        reset <= '1';
        wait for 10 ns;

        reset <= '0';
        X <= '0'; Y <= '0'; Z <= '0';
        wait for 10 ns;

        X <= '1'; Y <= '0'; Z <= '0';
        wait for 10 ns;

        -- Add more test cases as needed

        wait;
    end process stimulus;

end Behavioral;
