select CP_NAME as '회사이름', CAR_NAME as '자동차이름', DATE_YEAR as '연식', COUNT(`OPTION`) as '옵션 갯수' 
from (select * from CAR_INFO) CI
INNER JOIN CAR_INFO_OPTIONS COP ON CI.CI_PK = COP.CI_FK
INNER JOIN COMPANY CP ON CP.CP_PK = CI.CP_FK
INNER JOIN CAR_NAME CN ON CN.CN_PK = CI.CN_FK
INNER JOIN MODEL_YEAR MY ON MY.YEAR_PK = CI.YEAR_FK
INNER JOIN OPTIONS OP ON OP.OP_PK = COP.OP_FK
GROUP BY CP.CP_PK, CN.CN_PK, MY.YEAR_PK, CI.CI_PK;

select CP_NAME as '회사이름', CAR_NAME as '자동차이름', DATE_YEAR as '연식', COUNT(`OPTION`) as '옵션 갯수' from CAR_INFO CI
INNER JOIN CAR_INFO_OPTIONS COP ON CI.CI_PK = COP.CI_FK
INNER JOIN COMPANY CP ON CP.CP_PK = CI.CP_FK
INNER JOIN CAR_NAME CN ON CN.CN_PK = CI.CN_FK
INNER JOIN MODEL_YEAR MY ON MY.YEAR_PK = CI.YEAR_FK
INNER JOIN OPTIONS OP ON OP.OP_PK = COP.OP_FK
GROUP BY CP.CP_PK, CN.CN_PK, MY.YEAR_PK, CI.CI_PK HAVING MY.DATE_YEAR = '2019';