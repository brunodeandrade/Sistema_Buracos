DELIMITER |

CREATE procedure ASSERT_id (id INT)

begin 
if  (id!=1)
then 
	RAISERROR("Erro no teste.", 16, 1)
end IF;

end;|
