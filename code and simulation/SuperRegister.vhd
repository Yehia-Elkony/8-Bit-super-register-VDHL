						  --@@@@@@  BEGIN LIBRARY  @@@@@@-- 
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
						  --@@@@@@  END LIBRARY  @@@@@@-- 

						  --@@@@@@  BEGIN ENTITY  @@@@@@--                                                                     

ENTITY SuperRegister IS                                                                                                  --       @@@  Control i/p  @@@                                                
		PORT(data_in         :in       std_logic_vector(7 downto 0);                                                       --      000  ~>  LOAD NEW DATA                                                                         
		     control         :in       std_logic_vector(2 downto 0);                                                       --      001  ~>  SHIFT RIGHT
			  clk             :in                          std_logic;                                                       --      010  ~>  SHIFT LEFT
			  data_sh_r			:in                          std_logic;                                                       --      011  ~>  ROTATE RIGHT
			  data_sh_l       :in                          std_logic;                                                       --      100  ~>  ROTATE LEFT
			  data_out        :out      std_logic_vector(7 downto 0);                                                       --      101  ~>  STORE PRESENT DATA     
			  Z               :out                        std_logic);                                                       --      110  ~>  COUNT UP               
END SuperRegister;                                                                                                       --      111  ~>  COUNT DOWN             

						  --@@@@@@  END ENTITY  @@@@@@--
						
						
						  --@@@@@@  BEGIN ARCHITECTURE  @@@@@@--
ARCHITECTURE BEHAVIOR OF SuperRegister IS
SIGNAL    count:             std_logic_vector(7 downto 0):=(OTHERS => '0');
SIGNAL    store:             std_logic_vector(7 downto 0)                ;       
SIGNAL reg_data:             std_logic_vector(7 DOWNTO 0):=(OTHERS => '0');

BEGIN

	PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN 
		
			CASE control IS
			
				WHEN "000"        =>                  ------------------------------- LOAD NEW DATA
					store          <=  data_in   ;
					reg_data       <=  data_in   ;
					
				WHEN "001"        =>                  ------------------------------- SHIFT RIGHT
					reg_data       <=  data_sh_r&reg_data(7 downto 1)  ;
					store          <=  data_sh_r&reg_data(7 downto 1)  ;
					
				WHEN "010"        =>                  ------------------------------- SHIFT LEFT    
					reg_data       <=  reg_data(6 downto 0)&data_sh_l  ;
					store          <=  reg_data(6 downto 0)&data_sh_l  ;
					
				WHEN "011"        =>                  ------------------------------- ROTATE RIGHT
					reg_data       <=  reg_data(0)&reg_data(7 downto 1) ;
					store          <=  reg_data(0)&reg_data(7 downto 1)  ;
					
				WHEN "100"        =>                  ------------------------------- ROTATE LEFT
					reg_data       <=  reg_data(6 downto 0)&reg_data(7) ;
					store          <=  reg_data(6 downto 0)&reg_data(7)  ;
					
				WHEN "110"        =>                  ------------------------------- COUNTING UP 
					count          <=  count + 1 ;
					store          <=  count     ;
					
				WHEN "111"        =>                  ------------------------------- COUNTING DOWN
					count          <=  count - 1 ;
					store          <=  count     ;
					
				WHEN OTHERS       =>                  ------------------------------- STORE PRESENT DATA
					store          <=  store     ;
					
			END CASE;
			      
		END IF ;
	END PROCESS ;
	
	PROCESS(store)
	BEGIN  
				
				data_out <= store;
				
	END PROCESS;	
	
	        -- SECOND OUTPUT THAT CHECKS ALL ONE'S OR ALL ZEROES' --
		WITH store SELECT
		Z <= '1' WHEN "11111111",
			  '1' WHEN "00000000",
			  '0' WHEN OTHERS;
	
END BEHAVIOR;
						  --@@@@@@  END ARCHITECTURE  @@@@@@--