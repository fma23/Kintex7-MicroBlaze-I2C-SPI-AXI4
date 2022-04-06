 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.numeric_std.all;
 
 entity GPIOs is
   Port ( 
   clk       : in  std_logic;
   Rst_n     : in std_logic; 
   
   LED1      : out std_logic; 
   LED2      : out std_logic                      
    );
 end GPIOs;
 
 architecture RTL of GPIOs is
 
 constant max_count1 : natural := 1000000; --100 ms delay
 constant max_count2 : natural := 50; --100 ms delay
 
 signal LED1_Sig    : std_logic; 
 signal LED2_Sig    : std_logic; 

 begin
    counter: process(clk, Rst_n)
        variable count1 : natural range 0 to max_count1;
        variable count2 : natural range 0 to max_count2;
    begin
        if Rst_n = '0' then
            count1 := 0;
            LED1_Sig <= '0';
            LED2_Sig <= '0';
            
        elsif rising_edge(clk) then
            if count1 = max_count1 then
                count1 := 0;
                LED1_Sig <= NOT LED1_Sig;
                LED2_Sig <= NOT LED2_Sig;  
                
                --count2:=count2+1; 
               -- if count2 = max_count2 then
                --count2:=0; 
                
            else
             count1:= count1+1;       
            end if;
        end if;
    end process counter; 

    LED1<= LED1_Sig;
    LED2<= LED2_Sig; 
    
 end RTL;
