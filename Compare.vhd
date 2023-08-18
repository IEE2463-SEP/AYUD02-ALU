   
    --libraries to be used are specified here
    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    --entity declaration with port definitions
    entity compare is
    port(       num1 :   in std_logic_vector(3 downto 0);  --input 1
                num2 :   in std_logic_vector(3 downto 0);  --input 2
                clock:   in std_logic;  --input 3
                less :   out std_logic;   -- indicates first number is small
               equal :   out std_logic;   -- both are equal
               greater : out std_logic;    -- indicates first number is bigger
               outclock: out std_logic     -- clock output   
    );
    end compare;
    
    --architecture of entity
    architecture Behavioral of compare is
    
    begin
        
        cloking: process (clock)
        variable clocking: std_logic :='0';
                    begin 
                    if rising_edge(clock) then
                    clocking := not clocking;
                    end if;
                    outclock <= clocking;
                 end process;
        
    comparison: process(num1,num2)
    begin    -- process starts with a 'begin' statement
    if (num1 > num2 ) then  --checking whether num1 is greater than num2
    less <= '0';
    equal <= '0';
    greater <= '1';
    elsif (num1 < num2) then    --checking whether num1 is less than num2
    less <= '1';
    equal <= '0';
    greater <= '0';
    else     --checking whether num1 is equal to num2
    less <= '0';
    equal <= '1';
    greater <= '0';
    end if;
    end process;   -- process ends with a 'end process' statement
    end Behavioral;