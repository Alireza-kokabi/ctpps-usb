--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: DACController.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S050> <Package::896 FBGA>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity BiasController is
port (
    clk                 :       in          std_logic;
	SYNC_bar		    :       out         std_logic;
	LDAC_bar		    :       out         std_logic;
	DIN				    :       out         std_logic;
	SClock  		    :       out         std_logic;
    bias_voltage        :       in          integer range 0 to 16777215
);
end BiasController;
architecture behavioral of BiasController is
   -- signal, component etc. declarations
signal data_value   :       integer range 0 to 4095;

begin

    data_value  <=  bias_voltage +   1634;


process (clk)
	variable    SClock_Counter   	: integer range 0 to 2147483647 	    :=  0;
	variable 	SClockv				: std_logic								:=	'0';
	variable 	SYNC_barv			: std_logic								:=	'1';
	variable 	LDAC_barv			: std_logic								:=	'0';
	variable 	DINv				: std_logic								:=	'0';
	variable 	DataReady			: std_logic								:=	'0';
	variable    Cache1				: integer range 0 to 65535	            :=	0;
	variable	Cache2				: integer range 0 to 65535  	        :=	0;
	variable	Temp				: std_logic_vector(15 downto 0)         :=	"0000000000000000";
	variable	Index				: integer range 0 to 16	                :=	0;
	variable	sequence			: integer range 0 to 3	                :=	0;


begin

		--Clock frequency is 1KHz
	if rising_edge(clk) then
		if (SClock_Counter >= 40000 ) then
			SClock_Counter	                    :=  0;
			SClockv				                :=	'0';
		elsif (SClock_Counter >= 20000 ) then
			if SClockv	= '0'	then					            --Clock falling edge
				if bias_voltage 	= Cache1 then
					SYNC_barv		            :=	'1';				--No new data
					LDAC_barv		            :=	'1';
				else
					if DataReady = '1' then			--New data is received! 
						if sequence     =  0 then
                            Temp(11 downto 0)   :=	"011001100010";
                            Temp(15 downto 12)  :=	"0000";
                            sequence            :=  1;    
                        elsif sequence  =  1 then
                            Temp(11 downto 0)   :=	conv_std_logic_vector(data_value, 12);
                            Temp(15 downto 12)  :=	"0001";
                            sequence            :=  2;    
                        elsif sequence  =  2 then
                            Temp(11 downto 0)   :=	"011001100010";
                            Temp(15 downto 12)  :=	"0010";
                            sequence            :=  3;    
                        elsif sequence  =  3 then
                            Temp(11 downto 0)   :=	conv_std_logic_vector(data_value, 12);
                            Temp(15 downto 12)  :=	"0011";
                            sequence            :=  0;    
                        end if;
						DataReady               := '0';
						Index 	                := Index +1;
						DINv		            := Temp(15);		    --Sending the first bit of new data
						Temp		            := Temp(14 downto 0) & '0'; 
						SYNC_barv	            :=	'0';				--Start of sending data
					else
						if Index < 16 then
							Index 	            := Index +1;
							DINv	            := Temp(15);
							Temp		        := Temp(14 downto 0) & '0';
							if index = 10 then
								LDAC_barv	    :=	'0';
							end if;
						elsif Index = 16 then
							SYNC_barv	        :=	'1';				--Stop of sending data
							Index 	            :=  0;
							DataReady           := '1';
							Cache1 	            :=	bias_voltage;
							DINv		        :=	'0';				--Keep bus low when there is no data
						end if;
					end if;	
				end if;
			end if;
			SClockv				                := '1';
			SClock_Counter                      := SClock_Counter + 1;
		else
			SClockv			                    := '0';
			SClock_Counter	                    := SClock_Counter + 1;
		end if;
    end if;


	SClock	    <=	SClockv;
	SYNC_bar 	<=	SYNC_barv;
	DIN 	    <=	DINv;
	LDAC_bar    <=	LDAC_barv;

	
end process;





end behavioral;
