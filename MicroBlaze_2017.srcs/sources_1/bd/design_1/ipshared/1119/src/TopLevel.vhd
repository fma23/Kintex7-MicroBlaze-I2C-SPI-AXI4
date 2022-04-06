----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2022 04:13:57 PM
-- Design Name: 
-- Module Name: TopLevel - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IP_PL_TopLevel is
port (
   Clk_10MHz_TXO    : in std_logic;
   ClK_100MHz_PLL   : in std_logic; 
   Reset_n          : in std_logic; 
   
   Adder1stValue    : in std_logic_vector(30 downto 0); 
   Adder2ndValue    : in std_logic_vector(30 downto 0);
   AdderSum         : out std_logic_vector(31 downto 0);
   
   FPGA_LED1        : out std_logic; 
   FPGA_LED2        : out std_logic
   ); 
   
end IP_PL_TopLevel;

architecture Behavioral of IP_PL_TopLevel is

signal FPGA_LED1_Sig : std_logic; 
signal FPGA_LED2_Sig : std_logic;

signal locked_sig    : std_logic; 

signal clockout      : std_Logic;
signal reset_sig     : std_logic; 

signal AdderSum_sig  : std_logic_vector(31 downto 0);


 -- components/modules
component AdderIP is
port (
FirstValue : in std_logic_vector(30 downto 0);
SecondValue : in std_logic_vector(30 downto 0);
Sum : out std_logic_vector(31 downto 0)
);
end component;

-- components/modules
component GPIOs
port(  
   clk     : in std_logic;
   Rst_n   : in std_logic; 
   
   LED1    : out std_logic; 
   LED2    : out std_logic
 );
end component;

--component CLK_PLL 
--port(
--  clk_out1: out std_logic; 
--  reset   : in std_logic; 
--  locked  : out std_logic; 
--  clk_in1 : in std_logic
-- );
-- end component; 

begin

    Adder: AdderIP
    port map (
    FirstValue =>  Adder1stValue(30 downto 0),    --: in std_logic_vector(30 downto 0);
    SecondValue => Adder2ndValue(30 downto 0),   -- in std_logic_vector(30 downto 0);
    Sum         => AdderSum_sig(31 downto 0)
    );


   GPIOsPortMap : GPIOs
   port map (
   clk      => Clk_10MHz_TXO, --clockout, --tcxo,
   Rst_n    => Reset_n,
   
   LED1     => FPGA_LED1_Sig,
   LED2     => FPGA_LED2_Sig
   );
    
--  Clock: CLK_PLL 
--  port map(
--  clk_out1 => clockout,
--  reset    => reset_sig,
--  locked   => locked_sig,
--  clk_in1  => Clk_10MHz_TXO
-- );
 
-- these LEds turns only when the enable key is pressed 
FPGA_LED1<= FPGA_LED1_Sig when Adder1stValue(30)='1' else '0';
FPGA_LED2<= FPGA_LED2_Sig when Adder1stValue(30)='1' else '0';

--ClK_100MHz_PLL <= clockout; 

reset_sig <= not Reset_n; 

AdderSum <=AdderSum_sig; 


end Behavioral;
