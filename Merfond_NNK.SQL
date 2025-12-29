/* Formatted on 26/12/2025 11:33:38 (QP5 v5.381) */


edit class where cd_1 like 'PR%'

TRUNCATE TABLE spskv_h_tmp;

INSERT INTO spskv_h_tmp (SK_1,
                         OM_1,
                         PR_1,
                         ZX_1,
                         BR_1,
                         KS_1,
                         TS_1,
                         NS_1,
                         TZ_1,
                         NZ_1,
                         MS_1,
                         S1_1,
                         PK_1,
                         D1_1,
                         GU_1,
                         NW_1,
                         CZ_1,
                         BZ_1,
                         SR_1,
                         RU_1,
                         RA_1,
                         LN_1,
                         ZB2_1,
                         DST2_1,
                         VOR2_1,
                         ROD_SK_1,
                         SKH_1,
                         SAB_1,
                         DZH_1,
                         D2H_1,
                         PRP_1,
                         ZXP_1,
                         CZP_1,
                         TSP_1,
                         NSP_1,
                         TZP_1,
                         NZP_1,
                         STD2_1,
                         DZ_1,
                         NN_1,
                         NP_1,
                         N1_1,
                         IM_1,
                         PP_1,
                         NO_1,
                         DN2_1,
                         LK_1,
                         CA_1,
                         ST2_1,
                         TO_1)
    SELECT SK_1,
           OM_1,
           PR_1,
           ZX_FT_1,
           BR_1,
           KS_1,
           TS_1,
           NS_1,
           TZ_1,
           NZ_1,
           MS_1,
           S1_1,
           PK_1,
           D1_1,
           GU_1,
           NW_1,
           CZ_1,
           BZ_1,
           SR_1,
           RU_1,
           RA_1,
           LN_1,
           ZB2_1,
           DST2_1,
           VOR2_1,
           ROD_SK_1,
           SKH_1,
           SAB_1,
           DZH_1,
           D2H_1,
           PRP_1,
           ZXP_1,
           CZP_1,
           TSP_1,
           NSP_1,
           TZP_1,
           NZP_1,
           STD2_1,
           DZ_1,
           NN_1,
           NP_1,
           N1_1,
           IM_1,
           PP_1,
           NO_1,
           DN2_1,
           LK_1,
           CA_1,
           ST2_1,
           TO_1
      FROM spskv_all
     WHERE pr_1 = 'PR0008';

COMMIT;

DECLARE
    vBegin       NUMBER;
    vEnd         NUMBER;
    vBeginDate   DATE;
    vEndDate     DATE;
BEGIN
    vBegin := 20250101;
    vEnd := 20251201;
    vBeginDate := TO_DATE (vBegin, 'yyyymmdd');
    vEndDate := TO_DATE (vEnd, 'yyyymmdd');

    WHILE (vBeginDate < vEndDate)
    LOOP
        vBegin := TO_NUMBER (TO_CHAR (vBeginDate, 'yyyymmdd'));
        vEnd := TO_NUMBER (TO_CHAR (ADD_MONTHS (vBeginDate, 1), 'yyyymmdd'));
        DBMS_OUTPUT.put_line ('Interval: ' || vBegin || ' - ' || vEnd);
        FOR_MER.MAIN_MER (vBegin,
                          vEnd,
                          'P',
                          50,
                          1,
                          'XR0011');
        vBeginDate := ADD_MONTHS (vBeginDate, 1);
    END LOOP;
END;
/


select * from merfond_2025 where pr_1='PR0008' and gz_1 !='GZ0000'

Не работает формирование отчетов по Горизонтам.

У нас на тестовой схеме загружены привязки к горизонтам, сформированы данные в sppl, plast и merfond_2025 за 07.2025 по Татнефти

select * from merfond_2025 where pr_1 = 'PR0008' and gz_1 !='GZ0000' order by dt_1 desc

select * from class where cd_1 in ('GZ4120','GZ4110')

select * from plast_view where s1_1='682'  ---where gz_1 !='GZ0000' 

select * from plast where s1_1='682' --- gz_1 !='GZ0000'  

select * from sppl_view where s1_1='682' --- where gz_1 !='GZ0000' 

select * from sppl where gz_1 !='GZ0000' 


v#geol_object_asn goa, v#prodv_feature_alias pfa, v#well_cmpl wc, v#prodv_object_alias poa


2019667360

edit wellb where well_id=2019667360

edit well_cmpl where wellb_id=2036245360

 