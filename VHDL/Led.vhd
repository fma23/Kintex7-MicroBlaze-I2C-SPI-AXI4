 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.numeric_std.all;
 
 entity GPIOs is
   Port ( 
   clk       : in  std_logic;
   Rst_n     : in std_logic; 
   
   LED1      : out std_logic; 
   LED2      : out std_logic; 
   LED3      : out std_logic;  
   LED7      : out std_logic 
   
--   OPT_RXLOS1: out std_logic; 
--   OPT_RXLOS2: out std_logic; 
--   OPT_RXLOS3: out std_logic; 
--   OPT_RXLOS4: out std_logic; 
--   OPT_RXLOS5: out std_logic; 
--   OPT_RXLOS6: out std_logic; 
--   OPT_RXLOS7: out std_logic; 
--   OPT_RXLOS8: out std_logic                            
    );
 end GPIOs;
 
 architecture RTL of GPIOs is
 
 constant max_count : natural := 50000000; --500 ms delay
 
 signal LED1_Sig    : std_logic; 
 signal LED2_Sig    : std_logic; 
 signal LED3_Sig    : std_logic;  
 signal LED7_Sig    : std_logic;
 
-- signal OPT_RXLOS1_Sig    : std_logic; 
-- signal OPT_RXLOS2_Sig    : std_logic; 
-- signal OPT_RXLOS3_Sig    : std_logic;  
-- signal OPT_RXLOS4_Sig    : std_logic;
-- signal OPT_RXLOS5_Sig    : std_logic; 
-- signal OPT_RXLOS6_Sig    : std_logic; 
-- signal OPT_RXLOS7_Sig    : std_logic;  
-- signal OPT_RXLOS8_Sig    : std_logic;
 
 begin
    counter: process(clk, Rst_n)
        variable count : natural range 0 to max_count;
    begin
        if Rst_n = '0' then
        
            count := 0;
            LED1_Sig <= '0';
            LED2_Sig <= '0';
            LED3_Sig <= '0';
            LED7_Sig <= '0';
        
--            OPT_RXLOS1_Sig <= '0';
--            OPT_RXLOS2_Sig <= '0';
--            OPT_RXLOS3_Sig <= '0';
--            OPT_RXLOS4_Sig <= '0';
--            OPT_RXLOS5_Sig <= '0';
--            OPT_RXLOS6_Sig <= '0';
--            OPT_RXLOS7_Sig <= '0';
--            OPT_RXLOS8_Sig <= '0';
            
        elsif rising_edge(clk) then
            if count = max_count then
                count := 0;
             
                LED1_Sig <= NOT LED1_Sig;
                LED2_Sig <= NOT LED2_Sig;
                LED3_Sig <= NOT LED3_Sig;
                LED7_Sig <= NOT LED7_Sig;
                
--                OPT_RXLOS1_Sig <= NOT OPT_RXLOS1_Sig;
--                OPT_RXLOS2_Sig <= NOT OPT_RXLOS2_Sig;
--                OPT_RXLOS3_Sig <= NOT OPT_RXLOS3_Sig;
--                OPT_RXLOS4_Sig <= NOT OPT_RXLOS4_Sig;
--                OPT_RXLOS5_Sig <= NOT OPT_RXLOS5_Sig;
--                OPT_RXLOS6_Sig <= NOT OPT_RXLOS6_Sig;
--                OPT_RXLOS7_Sig <= NOT OPT_RXLOS7_Sig;
--                OPT_RXLOS8_Sig <= NOT OPT_RXLOS8_Sig;
            
            else
             count:= count+1;       
            end if;
        end if;
    end process counter; 

    LED1<= LED1_Sig;
    LED2<= LED2_Sig;
    LED3<= LED3_Sig;
    LED7<= LED7_Sig;
    
--    OPT_RXLOS1 <= OPT_RXLOS1_Sig;
--    OPT_RXLOS2 <= OPT_RXLOS2_Sig;
--    OPT_RXLOS3 <= OPT_RXLOS3_Sig;
--    OPT_RXLOS4 <= OPT_RXLOS4_Sig;
--    OPT_RXLOS5 <= OPT_RXLOS5_Sig;
--    OPT_RXLOS6 <= OPT_RXLOS6_Sig;
--    OPT_RXLOS7 <= OPT_RXLOS7_Sig;
--    OPT_RXLOS8 <= OPT_RXLOS8_Sig;
   
 end RTL;
