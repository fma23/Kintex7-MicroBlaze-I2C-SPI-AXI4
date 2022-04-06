------------------------------------------------------------
-- Engineer: F.Mabrouk
------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AdderIP is
port (
FirstValue : in std_logic_vector(30 downto 0);
SecondValue : in std_logic_vector(30 downto 0);
Sum : out std_logic_vector(31 downto 0)
);
end AdderIP;

architecture rtl of AdderIP is

begin

Sum <= std_logic_vector(resize(unsigned(FirstValue),32)+resize(unsigned(SecondValue),32));

end rtl;