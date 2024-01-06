-- One Process FSM
process(clk) is
begin
  
  if rising_edge(clk) then
    if rstn = '0' then
           s_state <= S0;
           o_out  <= Value0;
    else
      case State is
   
        when ST_S0 =>
          o_out <= Value0;
          if Condition0 then
            s_state <= S1;
          end if;
        
        when ST_S0 =>
          o_out <= Value1;
          if Condition1 then
            s_state <= S0;
          end if;
        
      end case;
    end if;
  end if;
end process;
