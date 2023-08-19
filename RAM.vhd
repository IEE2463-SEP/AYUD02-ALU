library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned;
use ieee.numeric_std.all;

entity RAM is
    Port (address: in std_logic_vector(3 downto 0); --Ahora usamos direcciones de 4 bits para ingresar
                                                    --usando los 4 switches de la Zybo y poder almacenar
          clk: in std_logic;                        --mas datos
          
          --enable: in std_logic;                   --Quitamos esta variable ya que no es necesaria 
                                                    --para la lógica que queremos implementar
          data_out: out std_logic_vector(3 downto 0));
end RAM;

architecture Behavioral of RAM is

--Extenderemos la memoria a 16 datos (igualmente de 4 bits)
type ram_array is array (0 to 15) of std_logic_vector (3 downto 0);

signal ram_data: ram_array := (
        b"1010", b"1111", b"0011", b"1001", b"1010", b"1111", b"0011", b"1001",
        b"1010", b"1111", b"0011", b"1001", b"1010", b"1111", b"0011", b"1001"
);
signal concat: std_logic_vector (3 downto 0):= b"0000";
begin

process(clk)
begin
    if(rising_edge(clk)) then
        --if(enable = '1') then
            data_out <= ram_data(to_integer(unsigned(address)));
        --end if;
    end if;
end process;
end Behavioral;