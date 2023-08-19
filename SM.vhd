library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SM is
    Port (sw    : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
          nxt   : IN STD_LOGIC := '0';
          clk   : IN STD_LOGIC;
          addr  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
          b     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
          instr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
          ledEn : OUT STD_LOGIC := '0'
          );
end SM;

architecture Behavioral of SM is
    SIGNAL state : INTEGER RANGE 0 TO 2;
begin
    process(clk, nxt)
       begin
        if rising_edge(nxt) then
            if (state = 0) then
                 addr <= sw;
                 state <= state + 1;
            elsif (state = 1) then
                b <= sw;
                state <= state + 1;
            elsif (state = 2) then
                state <= 0;
                addr <= "0000";
                b <= "0000";
                instr <= "0000";
            end if;
        end if;
        instr <= sw;
    end process;
    
    process(clk)
        begin
            if (state /= 2) then
                ledEn <= '1';
            else
                ledEn <= '0';
            end if;
    end process;
end Behavioral;