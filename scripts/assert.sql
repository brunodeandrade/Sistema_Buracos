DELIMITER |

CREATE procedure ASSERT_id (id INT)

begin 
if  (!id)
then 
	RAISERROR("Não existe id.", 16, 1)
end IF;

end;|
