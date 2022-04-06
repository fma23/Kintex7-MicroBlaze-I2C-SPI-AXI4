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

entity TopLevel is
port (
   tcxo_clk     : in std_logic;
   Reset_n      : in std_logic; 
   
   FPGA_LED1    : out std_logic; 
   FPGA_LED2    : out std_logic; 
   FPGA_LED3    : out std_logic;  
   FPGA_LED7    : out std_logic
   
--   FPGA_OPT_RXLOS1: out std_logic; 
--   FPGA_OPT_RXLOS2: out std_logic; 
--   FPGA_OPT_RXLOS3: out std_logic; 
--   FPGA_OPT_RXLOS4: out std_logic; 
--   FPGA_OPT_RXLOS5: out std_logic; 
--   FPGA_OPT_RXLOS6: out std_logic; 
--   FPGA_OPT_RXLOS7: out std_logic; 
--   FPGA_OPT_RXLOS8: out std_logic
   ); 
   
end TopLevel;

architecture Behavioral of TopLevel is

signal FPGA_LED1_Sig : std_logic; 
signal FPGA_LED2_Sig : std_logic;
signal FPGA_LED3_Sig : std_logic;
signal FPGA_LED7_Sig : std_logic;

signal locked_sig    : std_logic; 

signal clockout      : std_Logic;
signal reset_sig     : std_logic; 

--signal FPGA_OPT_RXLOS1_Sig: std_logic;
--signal FPGA_OPT_RXLOS2_Sig: std_logic;
--signal FPGA_OPT_RXLOS3_Sig: std_logic;
--signal FPGA_OPT_RXLOS4_Sig: std_logic;
--signal FPGA_OPT_RXLOS5_Sig: std_logic;
--signal FPGA_OPT_RXLOS6_Sig: std_logic;
--signal FPGA_OPT_RXLOS7_Sig: std_logic;
--signal FPGA_OPT_RXLOS8_Sig: std_logic;
 
-- components/modules
component GPIOs
port(  
   clk     : in std_logic;
   Rst_n   : in std_logic; 
   
   LED1    : out std_logic; 
   LED2    : out std_logic; 
   LED3    : out std_logic;  
   LED7    : out std_logic
   
--   OPT_RXLOS1: out std_logic; 
--   OPT_RXLOS2: out std_logic; 
--   OPT_RXLOS3: out std_logic; 
--   OPT_RXLOS4: out std_logic; 
--   OPT_RXLOS5: out std_logic; 
--   OPT_RXLOS6: out std_logic; 
--   OPT_RXLOS7: out std_logic; 
--   OPT_RXLOS8: out std_logic
 );
end component;

component clk_wiz_0 
port(
  clk_out1: out std_logic; 
  reset   : in std_logic; 
  locked  : out std_logic; 
  clk_in1 : in std_logic
 );
 end component; 

begin

   GPIOsPortMap : GPIOs
   port map (
   clk      => clockout, --tcxo_clk,
   Rst_n    => Reset_n,
   
   LED1     => FPGA_LED1_Sig,
   LED2     => FPGA_LED2_Sig,
   LED3     => FPGA_LED3_Sig, 
   LED7     => FPGA_LED7_Sig
   
--   OPT_RXLOS1  => FPGA_OPT_RXLOS1_Sig,
--   OPT_RXLOS2  => FPGA_OPT_RXLOS2_Sig,
--   OPT_RXLOS3  => FPGA_OPT_RXLOS3_Sig, 
--   OPT_RXLOS4  => FPGA_OPT_RXLOS4_Sig,
--   OPT_RXLOS5  => FPGA_OPT_RXLOS5_Sig,
--   OPT_RXLOS6  => FPGA_OPT_RXLOS6_Sig,
--   OPT_RXLOS7  => FPGA_OPT_RXLOS7_Sig, 
--   OPT_RXLOS8  => FPGA_OPT_RXLOS1_Sig
    );
    
  Clock: clk_wiz_0 
  port map(
  clk_out1 => clockout,
  reset    => reset_sig,
  locked   => locked_sig,
  clk_in1  => tcxo_clk
 );
 

FPGA_LED1<= FPGA_LED1_Sig;
FPGA_LED2<= FPGA_LED2_Sig;
FPGA_LED3<= FPGA_LED3_Sig;
FPGA_LED7<= FPGA_LED7_Sig;


reset_sig <= not Reset_n; 

--FPGA_OPT_RXLOS1<=FPGA_OPT_RXLOS1_Sig; 
--FPGA_OPT_RXLOS2<=FPGA_OPT_RXLOS2_Sig; 
--FPGA_OPT_RXLOS3<=FPGA_OPT_RXLOS3_Sig;
--FPGA_OPT_RXLOS4<=FPGA_OPT_RXLOS4_Sig; 
--FPGA_OPT_RXLOS5<=FPGA_OPT_RXLOS5_Sig; 
--FPGA_OPT_RXLOS6<=FPGA_OPT_RXLOS6_Sig; 
--FPGA_OPT_RXLOS7<=FPGA_OPT_RXLOS7_Sig; 
--FPGA_OPT_RXLOS8<=FPGA_OPT_RXLOS8_Sig; 



end Behavioral;
