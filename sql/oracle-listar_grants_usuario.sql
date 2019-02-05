--Listar todos os grants para um usuário

select
  'grant '|| privilegios || ' on ' || owner || '.' || table_name || ' to ' || grantee || ';' as sql
from (
  select
    LISTAGG(privilege, ', ') WITHIN GROUP (ORDER BY privilege asc) as privilegios,
    owner, 
    table_name, 
    grantee
  FROM DBA_TAB_PRIVS 
  WHERE 
    GRANTEE = 'APP_SCI'
  group by 
    owner,
    table_name, 
    grantee
  order by 
    owner,
    table_name
)
;
