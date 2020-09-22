# SYNTAX TEST "Packages/Advanced PLSQL/Advanced PLSQL.sublime-syntax"


FUNCTION GetAttributeDefRec(pnMsgId           IN     NUMBER,
--#                        ^ punctuation.section.parameters.begin.oracle
--                            # <- meta.method.parameters.oracle
--#                         ^^^^^^^ variable.parameter.oracle
--#                                           ^^ storage.modifier.parameter.oracle
--#                                                  ^^^^^^  storage.type.builtin.oracle
                            psProt            IN     VARCHAR2,
--#                         ^^^^^^ variable.parameter.oracle
--#                                           ^^ storage.modifier.parameter.oracle
                            pnAtdSid          IN     NUMBER,
                            pbLockMode        IN     BOOLEAN,
                            rRecAttributeDef  IN OUT TRecAttributeDef,
                            rbErrCode         in     BOOLEAN,
                            rsErrText         OUT    VARCHAR2)
--#                                                          ^ punctuation.section.parameters.end.oracle
  RETURN BOOLEAN IS
  vRecHelpAttributeDef     TRecAttributeDef;
  vRecHelpAttributeDefLock TRecAttributeDef;
# <- meta.block.declare.oracle



  --
  CURSOR curGet (nAtdSid NUMBER) IS
--#             ^ punctuation.section.parameters.begin.oracle
  --                        #  ^punctuation.section.parameters.end.oracle
--#              ^^^^^^^^^^^^^^ meta.cursor.parameters.oracle
asdf
--#                              ^^ meta.cursor
    SELECT sid      , order    , typ         , typbez   ,
           datentyp , laenge   , nachkomma   , lovgruppe,
           status   , storno   , creuser     , credat   ,
           user     , usedat   , lockversion , workflow ,
           copy     , validate
      FROM SOME_TABLE
     WHERE sid       = pnSid;
# <- meta.block.declare.oracle
  CURSOR curGetLock (nSid NUMBER) IS
    SELECT sid      , order    , typ         , typbez   ,
           datentyp , laenge   , nachkomma   , lovgruppe,
           status   , storno   , creuser     , credat   ,
           user     , usedat   , lockversion , workflow ,
           copy     , validate       
      FROM SOME_TABLE
     WHERE atdsid       = pnAtdSid
       FOR UPDATE OF atdsid;
       var test;
# <- meta.block.declare.oracle
begin
  asdf
# <- meta.block.begin.oracle
  begin
    if ... test then
      --# <- meta.block.begin.oracle
      asdf
      --# <- meta.block.ifblock.oracle
      for i in 1 .. 10 loop

        vstest...
        --# <- meta.block.loopblock.oracle
      end loop;
    end if;
      --# <- meta.block.begin.oracle
  end;
# ^^^ keyword.block.end
asdfasdf

--# <- meta.block.begin.oracle
asdfasdf
end;
begin

end;
asdf

if testapi.findsomething(partnumber => psArtNr,
                                         asdf => 'CN',
                                         dd => pdValid,
                                         vvv => vTypeAttributes) is not null then
        --#                                                                  ^^^^ keyword.block.beginif.oracle
        end if;

create or replace type CnSinWinPtHeader force authid current_user is object (
/**
* PL/SQL access model for table mic_cn_sw_pt_header.
* ($Rev: 381236 $)
* @headcom
*/

/**
* List of CnSinWinPtGroup containing newly created records of table mic_cn_sw_pt_group.
*/
vCnSinWinPtGroupList CnSinWinPtGroupList,

/**
* List of CnSinWinPtConsumption containing newly created records of table mic_cn_sw_pt_consumption.
*/
vCnSinWinPtConsumptionList CnSinWinPtConsumptionList,

nheactl_exp_total_amt number(19,5),
nheactl_imp_total_amt number(19,5),
nheapcret_no varchar2(80),
nhebizop_etpsno varchar2(10),
nhebizop_etps_addrnr varchar2(15),
nhebizop_etps_nm varchar2(512),
nhebizop_etps_sccd varchar2(18),
nhechg_appr_time date,
nhechg_tms_cnt number(19),
nheclosedflag varchar2(1),
nhecompany varchar2(2),
nhecredat date,
nhecreuser varchar2(64),
nhedcl_etpsno varchar2(10),
nhedcl_etps_addrnr varchar2(15),
nhedcl_etps_nm varchar2(512),
nhedcl_etps_sccd varchar2(18),
nhedcl_etps_typecd varchar2(25),
nhedcl_source_markcd varchar2(4),
nhedcl_time date,
nhedcl_typecd varchar2(25),
nhedcl_type_markcd varchar2(1),
nhedeclareflag varchar2(1),
nheemapv_stucd varchar2(4),
nheemergencyflag varchar2(1),
nheeml_no varchar2(64),
nheeml_type varchar2(1),
nheendprd_item_cnt number(19,5),
nheetps_preent_no varchar2(64),
nheet_arcrp_no varchar2(64),
nheexe_markcd varchar2(4),
nheexp_ctrt_no varchar2(30),
nheexp_currcd varchar2(3),
nheimpexp_portcd varchar2(255),
nheimp_ctrt_no varchar2(30),
nheimp_currcd varchar2(3),
nheimp_max_account number(19,5),
nheincompleteflag varchar2(1),
nheinput_etps_addrnr varchar2(15),
nheinput_etps_nm varchar2(512),
nheinput_etps_sccd varchar2(18),
nheinput_etps_typecd varchar2(10),
nheinput_time date,
nhelinkman varchar2(40),
nhelinkman_tel varchar2(50),
nhelockversion number,
nhemax_tovr_amt number(25,5),
nhemessagestatusreceive varchar2(2),
nhemessagestatussend varchar2(2),
nhemster_cuscd varchar2(4),
nhemtpck_item_cnt number(19,5),
nhenherelatedheadersid number(38),
nheopercusregcode varchar2(100),
nhepause_impexp_markcd varchar2(4),
nheplant varchar2(2),
nheproduce_typecd varchar2(2),
nheproduct_ratio number(25,5),
nheputrec_appr_time date,
nhercnt_vclr_time date,
nhercvgd_etpsno varchar2(10),
nhercvgd_etps_dtcd varchar2(5),
nhercvgd_etps_nm varchar2(512),
nheredu_natrcd varchar2(4),
nherisk_assure_markcd varchar2(4),
nherlt_form_no varchar2(64),
nhermk varchar2(4000),
nhervsngd_etps_addrnr varchar2(15),
nhervsngd_etps_sccd varchar2(18),
nheseq_no varchar2(18),
nhesid number(38),
nhestndbk_bankcd varchar2(1),
nhesupv_modecd varchar2(4),
nhesysid varchar2(10),
nhetype varchar2(1),
nheucns_dcl_segcd varchar2(1),
nheucns_verno_cntr_flag varchar2(1),
nheusage_type_cd varchar2(4),
nheusedat date,
nheuser varchar2(64),
nhevalid_from_date date,
nhevalid_to_date date,
nhevclr_prid_val number(19,5),
nhevclr_typecd varchar2(1),

/**
* Constructor
*
* @param pnActl_exp_total_amt value of attribute nheactl_exp_total_amt.
* @param pnActl_imp_total_amt value of attribute nheactl_imp_total_amt.
* @param psApcret_no value of attribute nheapcret_no.
* @param psBizop_etpsno value of attribute nhebizop_etpsno.
* @param psBizop_etps_addrnr value of attribute nhebizop_etps_addrnr.
* @param psBizop_etps_nm value of attribute nhebizop_etps_nm.
* @param psBizop_etps_sccd value of attribute nhebizop_etps_sccd.
* @param pdChg_appr_time value of attribute nhechg_appr_time.
* @param pnChg_tms_cnt value of attribute nhechg_tms_cnt.
* @param psClosedflag value of attribute nheclosedflag.
* @param psCompany value of attribute nhecompany.
* @param pdCredat value of attribute nhecredat.
* @param psCreuser value of attribute nhecreuser.
* @param psDcl_etpsno value of attribute nhedcl_etpsno.
* @param psDcl_etps_addrnr value of attribute nhedcl_etps_addrnr.
* @param psDcl_etps_nm value of attribute nhedcl_etps_nm.
* @param psDcl_etps_sccd value of attribute nhedcl_etps_sccd.
* @param psDcl_etps_typecd value of attribute nhedcl_etps_typecd.
* @param psDcl_source_markcd value of attribute nhedcl_source_markcd.
* @param pdDcl_time value of attribute nhedcl_time.
* @param psDcl_typecd value of attribute nhedcl_typecd.
* @param psDcl_type_markcd value of attribute nhedcl_type_markcd.
* @param psDeclareflag value of attribute nhedeclareflag.
* @param psEmapv_stucd value of attribute nheemapv_stucd.
* @param psEmergencyflag value of attribute nheemergencyflag.
* @param psEml_no value of attribute nheeml_no.
* @param psEml_type value of attribute nheeml_type.
* @param pnEndprd_item_cnt value of attribute nheendprd_item_cnt.
* @param psEtps_preent_no value of attribute nheetps_preent_no.
* @param psEt_arcrp_no value of attribute nheet_arcrp_no.
* @param psExe_markcd value of attribute nheexe_markcd.
* @param psExp_ctrt_no value of attribute nheexp_ctrt_no.
* @param psExp_currcd value of attribute nheexp_currcd.
* @param psImpexp_portcd value of attribute nheimpexp_portcd.
* @param psImp_ctrt_no value of attribute nheimp_ctrt_no.
* @param psImp_currcd value of attribute nheimp_currcd.
* @param pnImp_max_account value of attribute nheimp_max_account.
* @param psIncompleteflag value of attribute nheincompleteflag.
* @param psInput_etps_addrnr value of attribute nheinput_etps_addrnr.
* @param psInput_etps_nm value of attribute nheinput_etps_nm.
* @param psInput_etps_sccd value of attribute nheinput_etps_sccd.
* @param psInput_etps_typecd value of attribute nheinput_etps_typecd.
* @param pdInput_time value of attribute nheinput_time.
* @param psLinkman value of attribute nhelinkman.
* @param psLinkman_tel value of attribute nhelinkman_tel.
* @param pnLockversion value of attribute nhelockversion.
* @param pnMax_tovr_amt value of attribute nhemax_tovr_amt.
* @param psMessagestatusreceive value of attribute nhemessagestatusreceive.
* @param psMessagestatussend value of attribute nhemessagestatussend.
* @param psMster_cuscd value of attribute nhemster_cuscd.
* @param pnMtpck_item_cnt value of attribute nhemtpck_item_cnt.
* @param pnNherelatedheadersid value of attribute nhenherelatedheadersid.
* @param psOpercusregcode value of attribute nheopercusregcode.
* @param psPause_impexp_markcd value of attribute nhepause_impexp_markcd.
* @param psPlant value of attribute nheplant.
* @param psProduce_typecd value of attribute nheproduce_typecd.
* @param pnProduct_ratio value of attribute nheproduct_ratio.
* @param pdPutrec_appr_time value of attribute nheputrec_appr_time.
* @param pdRcnt_vclr_time value of attribute nhercnt_vclr_time.
* @param psRcvgd_etpsno value of attribute nhercvgd_etpsno.
* @param psRcvgd_etps_dtcd value of attribute nhercvgd_etps_dtcd.
* @param psRcvgd_etps_nm value of attribute nhercvgd_etps_nm.
* @param psRedu_natrcd value of attribute nheredu_natrcd.
* @param psRisk_assure_markcd value of attribute nherisk_assure_markcd.
* @param psRlt_form_no value of attribute nherlt_form_no.
* @param psRmk value of attribute nhermk.
* @param psRvsngd_etps_addrnr value of attribute nhervsngd_etps_addrnr.
* @param psRvsngd_etps_sccd value of attribute nhervsngd_etps_sccd.
* @param psSeq_no value of attribute nheseq_no.
* @param pnSid value of attribute nhesid.
* @param psStndbk_bankcd value of attribute nhestndbk_bankcd.
* @param psSupv_modecd value of attribute nhesupv_modecd.
* @param psSysid value of attribute nhesysid.
* @param psType value of attribute nhetype.
* @param psUcns_dcl_segcd value of attribute nheucns_dcl_segcd.
* @param psUcns_verno_cntr_flag value of attribute nheucns_verno_cntr_flag.
* @param psUsage_type_cd value of attribute nheusage_type_cd.
* @param pdUsedat value of attribute nheusedat.
* @param psUser value of attribute nheuser.
* @param pdValid_from_date value of attribute nhevalid_from_date.
* @param pdValid_to_date value of attribute nhevalid_to_date.
* @param pnVclr_prid_val value of attribute nhevclr_prid_val.
* @param psVclr_typecd value of attribute nhevclr_typecd.
*/
constructor function CnSinWinPtHeader(
  pnActl_exp_total_amt in number default null,
  pnActl_imp_total_amt in number default null,
  psApcret_no in varchar2 default null,
  psBizop_etpsno in varchar2 default null,
  psBizop_etps_addrnr in varchar2 default null,
  psBizop_etps_nm in varchar2 default null,
  psBizop_etps_sccd in varchar2 default null,
  pdChg_appr_time in date default null,
  pnChg_tms_cnt in number default null,
  psClosedflag in varchar2 default null,
  psCompany in varchar2 default null,
  pdCredat in date default null,
  psCreuser in varchar2 default null,
  psDcl_etpsno in varchar2 default null,
  psDcl_etps_addrnr in varchar2 default null,
  psDcl_etps_nm in varchar2 default null,
  psDcl_etps_sccd in varchar2 default null,
  psDcl_etps_typecd in varchar2 default null,
  psDcl_source_markcd in varchar2 default null,
  pdDcl_time in date default null,
  psDcl_typecd in varchar2 default null,
  psDcl_type_markcd in varchar2 default null,
  psDeclareflag in varchar2 default null,
  psEmapv_stucd in varchar2 default null,
  psEmergencyflag in varchar2 default null,
  psEml_no in varchar2 default null,
  psEml_type in varchar2 default null,
  pnEndprd_item_cnt in number default null,
  psEtps_preent_no in varchar2 default null,
  psEt_arcrp_no in varchar2 default null,
  psExe_markcd in varchar2 default null,
  psExp_ctrt_no in varchar2 default null,
  psExp_currcd in varchar2 default null,
  psImpexp_portcd in varchar2 default null,
  psImp_ctrt_no in varchar2 default null,
  psImp_currcd in varchar2 default null,
  pnImp_max_account in number default null,
  psIncompleteflag in varchar2 default null,
  psInput_etps_addrnr in varchar2 default null,
  psInput_etps_nm in varchar2 default null,
  psInput_etps_sccd in varchar2 default null,
  psInput_etps_typecd in varchar2 default null,
  pdInput_time in date default null,
  psLinkman in varchar2 default null,
  psLinkman_tel in varchar2 default null,
  pnLockversion in number default null,
  pnMax_tovr_amt in number default null,
  psMessagestatusreceive in varchar2 default null,
  psMessagestatussend in varchar2 default null,
  psMster_cuscd in varchar2 default null,
  pnMtpck_item_cnt in number default null,
  pnNherelatedheadersid in number default null,
  psOpercusregcode in varchar2 default null,
  psPause_impexp_markcd in varchar2 default null,
  psPlant in varchar2 default null,
  psProduce_typecd in varchar2 default null,
  pnProduct_ratio in number default null,
  pdPutrec_appr_time in date default null,
  pdRcnt_vclr_time in date default null,
  psRcvgd_etpsno in varchar2 default null,
  psRcvgd_etps_dtcd in varchar2 default null,
  psRcvgd_etps_nm in varchar2 default null,
  psRedu_natrcd in varchar2 default null,
  psRisk_assure_markcd in varchar2 default null,
  psRlt_form_no in varchar2 default null,
  psRmk in varchar2 default null,
  psRvsngd_etps_addrnr in varchar2 default null,
  psRvsngd_etps_sccd in varchar2 default null,
  psSeq_no in varchar2 default null,
  pnSid in number default null,
  psStndbk_bankcd in varchar2 default null,
  psSupv_modecd in varchar2 default null,
  psSysid in varchar2 default null,
  psType in varchar2 default null,
  psUcns_dcl_segcd in varchar2 default null,
  psUcns_verno_cntr_flag in varchar2 default null,
  psUsage_type_cd in varchar2 default null,
  pdUsedat in date default null,
  psUser in varchar2 default null,
  pdValid_from_date in date default null,
  pdValid_to_date in date default null,
  pnVclr_prid_val in number default null,
  psVclr_typecd in varchar2 default null
) return self as result,

/**
* Gets list of CnSinWinPtGroup containing models for references to table mic_cn_sw_pt_group.
*/
member function getCnSinWinPtGroups return CnSinWinPtGroupList,

/**
* Adds model of type CnSinWinPtGroup to CnSinWinPtGroupList.
*/
member procedure addCnSinWinPtGroup(self in out nocopy CnSinWinPtHeader, pTypeRelation in CnSinWinPtGroup),
/**
* Gets list of CnSinWinPtConsumption containing models for references to table mic_cn_sw_pt_consumption.
*/
member function getCnSinWinPtConsumptions return CnSinWinPtConsumptionList,

/**
* Adds model of type CnSinWinPtConsumption to CnSinWinPtConsumptionList.
*/
member procedure addCnSinWinPtConsumption(self in out nocopy CnSinWinPtHeader, pTypeRelation in CnSinWinPtConsumption),

/**
* Used to query model of table mic_cn_sw_pt_header.
*
* @param pnSid Used in where clause for column nhesid
*/
static function find(pnSid in number, pbLock in boolean default false) return CnSinWinPtHeader,

/**
* Used to query model of table mic_cn_sw_pt_header.
*
* @param psEml_no Used in where clause for column nheeml_no
*/
static function find(psEml_no in varchar2, pbLock in boolean default false) return CnSinWinPtHeader,

/**
* Used to count number of records in table mic_cn_sw_pt_header.
*/
static function count return number,

/**
* Gets new SID from sequence mic_cn_sw_pt_header_seq.
*/
member function getNewSid return number,

/**
* Sets value for column nheactl_exp_total_amt.
*
* @param pnActl_exp_total_amt Used to set attribute nheactl_exp_total_amt.
*/
member procedure setActl_exp_total_amt(self in out nocopy CnSinWinPtHeader, pnActl_exp_total_amt in number),

/**
* Gets value for column nheactl_exp_total_amt.
*/
member function getActl_exp_total_amt return number,

/**
* Sets value for column nheactl_imp_total_amt.
*
* @param pnActl_imp_total_amt Used to set attribute nheactl_imp_total_amt.
*/
member procedure setActl_imp_total_amt(self in out nocopy CnSinWinPtHeader, pnActl_imp_total_amt in number),

/**
* Gets value for column nheactl_imp_total_amt.
*/
member function getActl_imp_total_amt return number,

/**
* Sets value for column nheapcret_no.
*
* @param psApcret_no Used to set attribute nheapcret_no.
*/
member procedure setApcret_no(self in out nocopy CnSinWinPtHeader, psApcret_no in varchar2),

/**
* Gets value for column nheapcret_no.
*/
member function getApcret_no return varchar2,

/**
* Sets value for column nhebizop_etpsno.
*
* @param psBizop_etpsno Used to set attribute nhebizop_etpsno.
*/
member procedure setBizop_etpsno(self in out nocopy CnSinWinPtHeader, psBizop_etpsno in varchar2),

/**
* Gets value for column nhebizop_etpsno.
*/
member function getBizop_etpsno return varchar2,

/**
* Sets value for column nhebizop_etps_addrnr.
*
* @param psBizop_etps_addrnr Used to set attribute nhebizop_etps_addrnr.
*/
member procedure setBizop_etps_addrnr(self in out nocopy CnSinWinPtHeader, psBizop_etps_addrnr in varchar2),

/**
* Gets value for column nhebizop_etps_addrnr.
*/
member function getBizop_etps_addrnr return varchar2,

/**
* Sets value for column nhebizop_etps_nm.
*
* @param psBizop_etps_nm Used to set attribute nhebizop_etps_nm.
*/
member procedure setBizop_etps_nm(self in out nocopy CnSinWinPtHeader, psBizop_etps_nm in varchar2),

/**
* Gets value for column nhebizop_etps_nm.
*/
member function getBizop_etps_nm return varchar2,

/**
* Sets value for column nhebizop_etps_sccd.
*
* @param psBizop_etps_sccd Used to set attribute nhebizop_etps_sccd.
*/
member procedure setBizop_etps_sccd(self in out nocopy CnSinWinPtHeader, psBizop_etps_sccd in varchar2),

/**
* Gets value for column nhebizop_etps_sccd.
*/
member function getBizop_etps_sccd return varchar2,

/**
* Sets value for column nhechg_appr_time.
*
* @param pdChg_appr_time Used to set attribute nhechg_appr_time.
*/
member procedure setChg_appr_time(self in out nocopy CnSinWinPtHeader, pdChg_appr_time in date),

/**
* Gets value for column nhechg_appr_time.
*/
member function getChg_appr_time return date,

/**
* Sets value for column nhechg_tms_cnt.
*
* @param pnChg_tms_cnt Used to set attribute nhechg_tms_cnt.
*/
member procedure setChg_tms_cnt(self in out nocopy CnSinWinPtHeader, pnChg_tms_cnt in number),

/**
* Gets value for column nhechg_tms_cnt.
*/
member function getChg_tms_cnt return number,

/**
* Sets value for column nheclosedflag.
*
* @param psClosedflag Used to set attribute nheclosedflag.
*/
member procedure setClosedflag(self in out nocopy CnSinWinPtHeader, psClosedflag in varchar2),

/**
* Gets value for column nheclosedflag.
*/
member function getClosedflag return varchar2,

/**
* Indicates if column nheclosedflag is true or false.
*/
member function isClosedflag return boolean,

/**
* Sets value for column nhecompany.
*
* @param psCompany Used to set attribute nhecompany.
*/
member procedure setCompany(self in out nocopy CnSinWinPtHeader, psCompany in varchar2),

/**
* Gets value for column nhecompany.
*/
member function getCompany return varchar2,

/**
* Sets value for column nhecredat.
*
* @param pdCredat Used to set attribute nhecredat.
*/
member procedure setCredat(self in out nocopy CnSinWinPtHeader, pdCredat in date),

/**
* Gets value for column nhecredat.
*/
member function getCredat return date,

/**
* Sets value for column nhecreuser.
*
* @param psCreuser Used to set attribute nhecreuser.
*/
member procedure setCreuser(self in out nocopy CnSinWinPtHeader, psCreuser in varchar2),

/**
* Gets value for column nhecreuser.
*/
member function getCreuser return varchar2,

/**
* Sets value for column nhedcl_etpsno.
*
* @param psDcl_etpsno Used to set attribute nhedcl_etpsno.
*/
member procedure setDcl_etpsno(self in out nocopy CnSinWinPtHeader, psDcl_etpsno in varchar2),

/**
* Gets value for column nhedcl_etpsno.
*/
member function getDcl_etpsno return varchar2,

/**
* Sets value for column nhedcl_etps_addrnr.
*
* @param psDcl_etps_addrnr Used to set attribute nhedcl_etps_addrnr.
*/
member procedure setDcl_etps_addrnr(self in out nocopy CnSinWinPtHeader, psDcl_etps_addrnr in varchar2),

/**
* Gets value for column nhedcl_etps_addrnr.
*/
member function getDcl_etps_addrnr return varchar2,

/**
* Sets value for column nhedcl_etps_nm.
*
* @param psDcl_etps_nm Used to set attribute nhedcl_etps_nm.
*/
member procedure setDcl_etps_nm(self in out nocopy CnSinWinPtHeader, psDcl_etps_nm in varchar2),

/**
* Gets value for column nhedcl_etps_nm.
*/
member function getDcl_etps_nm return varchar2,

/**
* Sets value for column nhedcl_etps_sccd.
*
* @param psDcl_etps_sccd Used to set attribute nhedcl_etps_sccd.
*/
member procedure setDcl_etps_sccd(self in out nocopy CnSinWinPtHeader, psDcl_etps_sccd in varchar2),

/**
* Gets value for column nhedcl_etps_sccd.
*/
member function getDcl_etps_sccd return varchar2,

/**
* Sets value for column nhedcl_etps_typecd.
*
* @param psDcl_etps_typecd Used to set attribute nhedcl_etps_typecd.
*/
member procedure setDcl_etps_typecd(self in out nocopy CnSinWinPtHeader, psDcl_etps_typecd in varchar2),

/**
* Gets value for column nhedcl_etps_typecd.
*/
member function getDcl_etps_typecd return varchar2,

/**
* Sets value for column nhedcl_source_markcd.
*
* @param psDcl_source_markcd Used to set attribute nhedcl_source_markcd.
*/
member procedure setDcl_source_markcd(self in out nocopy CnSinWinPtHeader, psDcl_source_markcd in varchar2),

/**
* Gets value for column nhedcl_source_markcd.
*/
member function getDcl_source_markcd return varchar2,

/**
* Sets value for column nhedcl_time.
*
* @param pdDcl_time Used to set attribute nhedcl_time.
*/
member procedure setDcl_time(self in out nocopy CnSinWinPtHeader, pdDcl_time in date),

/**
* Gets value for column nhedcl_time.
*/
member function getDcl_time return date,

/**
* Sets value for column nhedcl_typecd.
*
* @param psDcl_typecd Used to set attribute nhedcl_typecd.
*/
member procedure setDcl_typecd(self in out nocopy CnSinWinPtHeader, psDcl_typecd in varchar2),

/**
* Gets value for column nhedcl_typecd.
*/
member function getDcl_typecd return varchar2,

/**
* Sets value for column nhedcl_type_markcd.
*
* @param psDcl_type_markcd Used to set attribute nhedcl_type_markcd.
*/
member procedure setDcl_type_markcd(self in out nocopy CnSinWinPtHeader, psDcl_type_markcd in varchar2),

/**
* Gets value for column nhedcl_type_markcd.
*/
member function getDcl_type_markcd return varchar2,

/**
* Indicates if column nhedcl_type_markcd is true or false.
*/
member function isDcl_type_markcd return boolean,

/**
* Sets value for column nhedeclareflag.
*
* @param psDeclareflag Used to set attribute nhedeclareflag.
*/
member procedure setDeclareflag(self in out nocopy CnSinWinPtHeader, psDeclareflag in varchar2),

/**
* Gets value for column nhedeclareflag.
*/
member function getDeclareflag return varchar2,

/**
* Indicates if column nhedeclareflag is true or false.
*/
member function isDeclareflag return boolean,

/**
* Sets value for column nheemapv_stucd.
*
* @param psEmapv_stucd Used to set attribute nheemapv_stucd.
*/
member procedure setEmapv_stucd(self in out nocopy CnSinWinPtHeader, psEmapv_stucd in varchar2),

/**
* Gets value for column nheemapv_stucd.
*/
member function getEmapv_stucd return varchar2,

/**
* Sets value for column nheemergencyflag.
*
* @param psEmergencyflag Used to set attribute nheemergencyflag.
*/
member procedure setEmergencyflag(self in out nocopy CnSinWinPtHeader, psEmergencyflag in varchar2),

/**
* Gets value for column nheemergencyflag.
*/
member function getEmergencyflag return varchar2,

/**
* Indicates if column nheemergencyflag is true or false.
*/
member function isEmergencyflag return boolean,

/**
* Sets value for column nheeml_no.
*
* @param psEml_no Used to set attribute nheeml_no.
*/
member procedure setEml_no(self in out nocopy CnSinWinPtHeader, psEml_no in varchar2),

/**
* Gets value for column nheeml_no.
*/
member function getEml_no return varchar2,

/**
* Sets value for column nheeml_type.
*
* @param psEml_type Used to set attribute nheeml_type.
*/
member procedure setEml_type(self in out nocopy CnSinWinPtHeader, psEml_type in varchar2),

/**
* Gets value for column nheeml_type.
*/
member function getEml_type return varchar2,

/**
* Indicates if column nheeml_type is true or false.
*/
member function isEml_type return boolean,

/**
* Sets value for column nheendprd_item_cnt.
*
* @param pnEndprd_item_cnt Used to set attribute nheendprd_item_cnt.
*/
member procedure setEndprd_item_cnt(self in out nocopy CnSinWinPtHeader, pnEndprd_item_cnt in number),

/**
* Gets value for column nheendprd_item_cnt.
*/
member function getEndprd_item_cnt return number,

/**
* Sets value for column nheetps_preent_no.
*
* @param psEtps_preent_no Used to set attribute nheetps_preent_no.
*/
member procedure setEtps_preent_no(self in out nocopy CnSinWinPtHeader, psEtps_preent_no in varchar2),

/**
* Gets value for column nheetps_preent_no.
*/
member function getEtps_preent_no return varchar2,

/**
* Sets value for column nheet_arcrp_no.
*
* @param psEt_arcrp_no Used to set attribute nheet_arcrp_no.
*/
member procedure setEt_arcrp_no(self in out nocopy CnSinWinPtHeader, psEt_arcrp_no in varchar2),

/**
* Gets value for column nheet_arcrp_no.
*/
member function getEt_arcrp_no return varchar2,

/**
* Sets value for column nheexe_markcd.
*
* @param psExe_markcd Used to set attribute nheexe_markcd.
*/
member procedure setExe_markcd(self in out nocopy CnSinWinPtHeader, psExe_markcd in varchar2),

/**
* Gets value for column nheexe_markcd.
*/
member function getExe_markcd return varchar2,

/**
* Sets value for column nheexp_ctrt_no.
*
* @param psExp_ctrt_no Used to set attribute nheexp_ctrt_no.
*/
member procedure setExp_ctrt_no(self in out nocopy CnSinWinPtHeader, psExp_ctrt_no in varchar2),

/**
* Gets value for column nheexp_ctrt_no.
*/
member function getExp_ctrt_no return varchar2,

/**
* Sets value for column nheexp_currcd.
*
* @param psExp_currcd Used to set attribute nheexp_currcd.
*/
member procedure setExp_currcd(self in out nocopy CnSinWinPtHeader, psExp_currcd in varchar2),

/**
* Gets value for column nheexp_currcd.
*/
member function getExp_currcd return varchar2,

/**
* Sets value for column nheimpexp_portcd.
*
* @param psImpexp_portcd Used to set attribute nheimpexp_portcd.
*/
member procedure setImpexp_portcd(self in out nocopy CnSinWinPtHeader, psImpexp_portcd in varchar2),

/**
* Gets value for column nheimpexp_portcd.
*/
member function getImpexp_portcd return varchar2,

/**
* Sets value for column nheimp_ctrt_no.
*
* @param psImp_ctrt_no Used to set attribute nheimp_ctrt_no.
*/
member procedure setImp_ctrt_no(self in out nocopy CnSinWinPtHeader, psImp_ctrt_no in varchar2),

/**
* Gets value for column nheimp_ctrt_no.
*/
member function getImp_ctrt_no return varchar2,

/**
* Sets value for column nheimp_currcd.
*
* @param psImp_currcd Used to set attribute nheimp_currcd.
*/
member procedure setImp_currcd(self in out nocopy CnSinWinPtHeader, psImp_currcd in varchar2),

/**
* Gets value for column nheimp_currcd.
*/
member function getImp_currcd return varchar2,

/**
* Sets value for column nheimp_max_account.
*
* @param pnImp_max_account Used to set attribute nheimp_max_account.
*/
member procedure setImp_max_account(self in out nocopy CnSinWinPtHeader, pnImp_max_account in number),

/**
* Gets value for column nheimp_max_account.
*/
member function getImp_max_account return number,

/**
* Sets value for column nheincompleteflag.
*
* @param psIncompleteflag Used to set attribute nheincompleteflag.
*/
member procedure setIncompleteflag(self in out nocopy CnSinWinPtHeader, psIncompleteflag in varchar2),

/**
* Gets value for column nheincompleteflag.
*/
member function getIncompleteflag return varchar2,

/**
* Indicates if column nheincompleteflag is true or false.
*/
member function isIncompleteflag return boolean,

/**
* Sets value for column nheinput_etps_addrnr.
*
* @param psInput_etps_addrnr Used to set attribute nheinput_etps_addrnr.
*/
member procedure setInput_etps_addrnr(self in out nocopy CnSinWinPtHeader, psInput_etps_addrnr in varchar2),

/**
* Gets value for column nheinput_etps_addrnr.
*/
member function getInput_etps_addrnr return varchar2,

/**
* Sets value for column nheinput_etps_nm.
*
* @param psInput_etps_nm Used to set attribute nheinput_etps_nm.
*/
member procedure setInput_etps_nm(self in out nocopy CnSinWinPtHeader, psInput_etps_nm in varchar2),

/**
* Gets value for column nheinput_etps_nm.
*/
member function getInput_etps_nm return varchar2,

/**
* Sets value for column nheinput_etps_sccd.
*
* @param psInput_etps_sccd Used to set attribute nheinput_etps_sccd.
*/
member procedure setInput_etps_sccd(self in out nocopy CnSinWinPtHeader, psInput_etps_sccd in varchar2),

/**
* Gets value for column nheinput_etps_sccd.
*/
member function getInput_etps_sccd return varchar2,

/**
* Sets value for column nheinput_etps_typecd.
*
* @param psInput_etps_typecd Used to set attribute nheinput_etps_typecd.
*/
member procedure setInput_etps_typecd(self in out nocopy CnSinWinPtHeader, psInput_etps_typecd in varchar2),

/**
* Gets value for column nheinput_etps_typecd.
*/
member function getInput_etps_typecd return varchar2,

/**
* Sets value for column nheinput_time.
*
* @param pdInput_time Used to set attribute nheinput_time.
*/
member procedure setInput_time(self in out nocopy CnSinWinPtHeader, pdInput_time in date),

/**
* Gets value for column nheinput_time.
*/
member function getInput_time return date,

/**
* Sets value for column nhelinkman.
*
* @param psLinkman Used to set attribute nhelinkman.
*/
member procedure setLinkman(self in out nocopy CnSinWinPtHeader, psLinkman in varchar2),

/**
* Gets value for column nhelinkman.
*/
member function getLinkman return varchar2,

/**
* Sets value for column nhelinkman_tel.
*
* @param psLinkman_tel Used to set attribute nhelinkman_tel.
*/
member procedure setLinkman_tel(self in out nocopy CnSinWinPtHeader, psLinkman_tel in varchar2),

/**
* Gets value for column nhelinkman_tel.
*/
member function getLinkman_tel return varchar2,

/**
* Sets value for column nhelockversion.
*
* @param pnLockversion Used to set attribute nhelockversion.
*/
member procedure setLockversion(self in out nocopy CnSinWinPtHeader, pnLockversion in number),

/**
* Gets value for column nhelockversion.
*/
member function getLockversion return number,

/**
* Sets value for column nhemax_tovr_amt.
*
* @param pnMax_tovr_amt Used to set attribute nhemax_tovr_amt.
*/
member procedure setMax_tovr_amt(self in out nocopy CnSinWinPtHeader, pnMax_tovr_amt in number),

/**
* Gets value for column nhemax_tovr_amt.
*/
member function getMax_tovr_amt return number,

/**
* Sets value for column nhemessagestatusreceive.
*
* @param psMessagestatusreceive Used to set attribute nhemessagestatusreceive.
*/
member procedure setMessagestatusreceive(self in out nocopy CnSinWinPtHeader, psMessagestatusreceive in varchar2),

/**
* Gets value for column nhemessagestatusreceive.
*/
member function getMessagestatusreceive return varchar2,

/**
* Sets value for column nhemessagestatussend.
*
* @param psMessagestatussend Used to set attribute nhemessagestatussend.
*/
member procedure setMessagestatussend(self in out nocopy CnSinWinPtHeader, psMessagestatussend in varchar2),

/**
* Gets value for column nhemessagestatussend.
*/
member function getMessagestatussend return varchar2,

/**
* Sets value for column nhemster_cuscd.
*
* @param psMster_cuscd Used to set attribute nhemster_cuscd.
*/
member procedure setMster_cuscd(self in out nocopy CnSinWinPtHeader, psMster_cuscd in varchar2),

/**
* Gets value for column nhemster_cuscd.
*/
member function getMster_cuscd return varchar2,

/**
* Sets value for column nhemtpck_item_cnt.
*
* @param pnMtpck_item_cnt Used to set attribute nhemtpck_item_cnt.
*/
member procedure setMtpck_item_cnt(self in out nocopy CnSinWinPtHeader, pnMtpck_item_cnt in number),

/**
* Gets value for column nhemtpck_item_cnt.
*/
member function getMtpck_item_cnt return number,

/**
* Sets value for column nhenherelatedheadersid.
*
* @param pnNherelatedheadersid Used to set attribute nhenherelatedheadersid.
*/
member procedure setNherelatedheadersid(self in out nocopy CnSinWinPtHeader, pnNherelatedheadersid in number),

/**
* Gets value for column nhenherelatedheadersid.
*/
member function getNherelatedheadersid return number,

/**
* Sets value for column nheopercusregcode.
*
* @param psOpercusregcode Used to set attribute nheopercusregcode.
*/
member procedure setOpercusregcode(self in out nocopy CnSinWinPtHeader, psOpercusregcode in varchar2),

/**
* Gets value for column nheopercusregcode.
*/
member function getOpercusregcode return varchar2,

/**
* Sets value for column nhepause_impexp_markcd.
*
* @param psPause_impexp_markcd Used to set attribute nhepause_impexp_markcd.
*/
member procedure setPause_impexp_markcd(self in out nocopy CnSinWinPtHeader, psPause_impexp_markcd in varchar2),

/**
* Gets value for column nhepause_impexp_markcd.
*/
member function getPause_impexp_markcd return varchar2,

/**
* Sets value for column nheplant.
*
* @param psPlant Used to set attribute nheplant.
*/
member procedure setPlant(self in out nocopy CnSinWinPtHeader, psPlant in varchar2),

/**
* Gets value for column nheplant.
*/
member function getPlant return varchar2,

/**
* Sets value for column nheproduce_typecd.
*
* @param psProduce_typecd Used to set attribute nheproduce_typecd.
*/
member procedure setProduce_typecd(self in out nocopy CnSinWinPtHeader, psProduce_typecd in varchar2),

/**
* Gets value for column nheproduce_typecd.
*/
member function getProduce_typecd return varchar2,

/**
* Sets value for column nheproduct_ratio.
*
* @param pnProduct_ratio Used to set attribute nheproduct_ratio.
*/
member procedure setProduct_ratio(self in out nocopy CnSinWinPtHeader, pnProduct_ratio in number),

/**
* Gets value for column nheproduct_ratio.
*/
member function getProduct_ratio return number,

/**
* Sets value for column nheputrec_appr_time.
*
* @param pdPutrec_appr_time Used to set attribute nheputrec_appr_time.
*/
member procedure setPutrec_appr_time(self in out nocopy CnSinWinPtHeader, pdPutrec_appr_time in date),

/**
* Gets value for column nheputrec_appr_time.
*/
member function getPutrec_appr_time return date,

/**
* Sets value for column nhercnt_vclr_time.
*
* @param pdRcnt_vclr_time Used to set attribute nhercnt_vclr_time.
*/
member procedure setRcnt_vclr_time(self in out nocopy CnSinWinPtHeader, pdRcnt_vclr_time in date),

/**
* Gets value for column nhercnt_vclr_time.
*/
member function getRcnt_vclr_time return date,

/**
* Sets value for column nhercvgd_etpsno.
*
* @param psRcvgd_etpsno Used to set attribute nhercvgd_etpsno.
*/
member procedure setRcvgd_etpsno(self in out nocopy CnSinWinPtHeader, psRcvgd_etpsno in varchar2),

/**
* Gets value for column nhercvgd_etpsno.
*/
member function getRcvgd_etpsno return varchar2,

/**
* Sets value for column nhercvgd_etps_dtcd.
*
* @param psRcvgd_etps_dtcd Used to set attribute nhercvgd_etps_dtcd.
*/
member procedure setRcvgd_etps_dtcd(self in out nocopy CnSinWinPtHeader, psRcvgd_etps_dtcd in varchar2),

/**
* Gets value for column nhercvgd_etps_dtcd.
*/
member function getRcvgd_etps_dtcd return varchar2,

/**
* Sets value for column nhercvgd_etps_nm.
*
* @param psRcvgd_etps_nm Used to set attribute nhercvgd_etps_nm.
*/
member procedure setRcvgd_etps_nm(self in out nocopy CnSinWinPtHeader, psRcvgd_etps_nm in varchar2),

/**
* Gets value for column nhercvgd_etps_nm.
*/
member function getRcvgd_etps_nm return varchar2,

/**
* Sets value for column nheredu_natrcd.
*
* @param psRedu_natrcd Used to set attribute nheredu_natrcd.
*/
member procedure setRedu_natrcd(self in out nocopy CnSinWinPtHeader, psRedu_natrcd in varchar2),

/**
* Gets value for column nheredu_natrcd.
*/
member function getRedu_natrcd return varchar2,

/**
* Sets value for column nherisk_assure_markcd.
*
* @param psRisk_assure_markcd Used to set attribute nherisk_assure_markcd.
*/
member procedure setRisk_assure_markcd(self in out nocopy CnSinWinPtHeader, psRisk_assure_markcd in varchar2),

/**
* Gets value for column nherisk_assure_markcd.
*/
member function getRisk_assure_markcd return varchar2,

/**
* Sets value for column nherlt_form_no.
*
* @param psRlt_form_no Used to set attribute nherlt_form_no.
*/
member procedure setRlt_form_no(self in out nocopy CnSinWinPtHeader, psRlt_form_no in varchar2),

/**
* Gets value for column nherlt_form_no.
*/
member function getRlt_form_no return varchar2,

/**
* Sets value for column nhermk.
*
* @param psRmk Used to set attribute nhermk.
*/
member procedure setRmk(self in out nocopy CnSinWinPtHeader, psRmk in varchar2),

/**
* Gets value for column nhermk.
*/
member function getRmk return varchar2,

/**
* Sets value for column nhervsngd_etps_addrnr.
*
* @param psRvsngd_etps_addrnr Used to set attribute nhervsngd_etps_addrnr.
*/
member procedure setRvsngd_etps_addrnr(self in out nocopy CnSinWinPtHeader, psRvsngd_etps_addrnr in varchar2),

/**
* Gets value for column nhervsngd_etps_addrnr.
*/
member function getRvsngd_etps_addrnr return varchar2,

/**
* Sets value for column nhervsngd_etps_sccd.
*
* @param psRvsngd_etps_sccd Used to set attribute nhervsngd_etps_sccd.
*/
member procedure setRvsngd_etps_sccd(self in out nocopy CnSinWinPtHeader, psRvsngd_etps_sccd in varchar2),

/**
* Gets value for column nhervsngd_etps_sccd.
*/
member function getRvsngd_etps_sccd return varchar2,

/**
* Sets value for column nheseq_no.
*
* @param psSeq_no Used to set attribute nheseq_no.
*/
member procedure setSeq_no(self in out nocopy CnSinWinPtHeader, psSeq_no in varchar2),

/**
* Gets value for column nheseq_no.
*/
member function getSeq_no return varchar2,

/**
* Sets value for column nhesid.
*
* @param pnSid Used to set attribute nhesid.
*/
member procedure setSid(self in out nocopy CnSinWinPtHeader, pnSid in number),

/**
* Gets value for column nhesid.
*/
member function getSid return number,

/**
* Sets value for column nhestndbk_bankcd.
*
* @param psStndbk_bankcd Used to set attribute nhestndbk_bankcd.
*/
member procedure setStndbk_bankcd(self in out nocopy CnSinWinPtHeader, psStndbk_bankcd in varchar2),

/**
* Gets value for column nhestndbk_bankcd.
*/
member function getStndbk_bankcd return varchar2,

/**
* Indicates if column nhestndbk_bankcd is true or false.
*/
member function isStndbk_bankcd return boolean,

/**
* Sets value for column nhesupv_modecd.
*
* @param psSupv_modecd Used to set attribute nhesupv_modecd.
*/
member procedure setSupv_modecd(self in out nocopy CnSinWinPtHeader, psSupv_modecd in varchar2),

/**
* Gets value for column nhesupv_modecd.
*/
member function getSupv_modecd return varchar2,

/**
* Sets value for column nhesysid.
*
* @param psSysid Used to set attribute nhesysid.
*/
member procedure setSysid(self in out nocopy CnSinWinPtHeader, psSysid in varchar2),

/**
* Gets value for column nhesysid.
*/
member function getSysid return varchar2,

/**
* Sets value for column nhetype.
*
* @param psType Used to set attribute nhetype.
*/
member procedure setType(self in out nocopy CnSinWinPtHeader, psType in varchar2),

/**
* Gets value for column nhetype.
*/
member function getType return varchar2,

/**
* Indicates if column nhetype is true or false.
*/
member function isType return boolean,

/**
* Sets value for column nheucns_dcl_segcd.
*
* @param psUcns_dcl_segcd Used to set attribute nheucns_dcl_segcd.
*/
member procedure setUcns_dcl_segcd(self in out nocopy CnSinWinPtHeader, psUcns_dcl_segcd in varchar2),

/**
* Gets value for column nheucns_dcl_segcd.
*/
member function getUcns_dcl_segcd return varchar2,

/**
* Indicates if column nheucns_dcl_segcd is true or false.
*/
member function isUcns_dcl_segcd return boolean,

/**
* Sets value for column nheucns_verno_cntr_flag.
*
* @param psUcns_verno_cntr_flag Used to set attribute nheucns_verno_cntr_flag.
*/
member procedure setUcns_verno_cntr_flag(self in out nocopy CnSinWinPtHeader, psUcns_verno_cntr_flag in varchar2),

/**
* Gets value for column nheucns_verno_cntr_flag.
*/
member function getUcns_verno_cntr_flag return varchar2,

/**
* Indicates if column nheucns_verno_cntr_flag is true or false.
*/
member function isUcns_verno_cntr_flag return boolean,

/**
* Sets value for column nheusage_type_cd.
*
* @param psUsage_type_cd Used to set attribute nheusage_type_cd.
*/
member procedure setUsage_type_cd(self in out nocopy CnSinWinPtHeader, psUsage_type_cd in varchar2),

/**
* Gets value for column nheusage_type_cd.
*/
member function getUsage_type_cd return varchar2,

/**
* Sets value for column nheusedat.
*
* @param pdUsedat Used to set attribute nheusedat.
*/
member procedure setUsedat(self in out nocopy CnSinWinPtHeader, pdUsedat in date),

/**
* Gets value for column nheusedat.
*/
member function getUsedat return date,

/**
* Sets value for column nheuser.
*
* @param psUser Used to set attribute nheuser.
*/
member procedure setUser(self in out nocopy CnSinWinPtHeader, psUser in varchar2),

/**
* Gets value for column nheuser.
*/
member function getUser return varchar2,

/**
* Sets value for column nhevalid_from_date.
*
* @param pdValid_from_date Used to set attribute nhevalid_from_date.
*/
member procedure setValid_from_date(self in out nocopy CnSinWinPtHeader, pdValid_from_date in date),

/**
* Gets value for column nhevalid_from_date.
*/
member function getValid_from_date return date,

/**
* Sets value for column nhevalid_to_date.
*
* @param pdValid_to_date Used to set attribute nhevalid_to_date.
*/
member procedure setValid_to_date(self in out nocopy CnSinWinPtHeader, pdValid_to_date in date),

/**
* Gets value for column nhevalid_to_date.
*/
member function getValid_to_date return date,

/**
* Sets value for column nhevclr_prid_val.
*
* @param pnVclr_prid_val Used to set attribute nhevclr_prid_val.
*/
member procedure setVclr_prid_val(self in out nocopy CnSinWinPtHeader, pnVclr_prid_val in number),

/**
* Gets value for column nhevclr_prid_val.
*/
member function getVclr_prid_val return number,

/**
* Sets value for column nhevclr_typecd.
*
* @param psVclr_typecd Used to set attribute nhevclr_typecd.
*/
member procedure setVclr_typecd(self in out nocopy CnSinWinPtHeader, psVclr_typecd in varchar2),

/**
* Gets value for column nhevclr_typecd.
*/
member function getVclr_typecd return varchar2,

/**
* Indicates if column nhevclr_typecd is true or false.
*/
member function isVclr_typecd return boolean,

/**
* Clones model by resetting primary key and system fields.
*/
member function clone(self in CnSinWinPtHeader) return CnSinWinPtHeader,

/**
* Clones model by resetting primary key and system fields.
*/
member procedure clone(self in out CnSinWinPtHeader),

/**
* Executes delete statement for table mic_cn_sw_pt_header.
*/
member procedure remove(self in CnSinWinPtHeader),

/**
* Executes insert or update statement for table mic_cn_sw_pt_header.
*
* @param pbForceInsert Used to execute insert even if primary key is already set.
*/
member procedure persist(self in out CnSinWinPtHeader, pbForceInsert in boolean default false),

/**
* Executes insert or update statement for table mic_cn_sw_pt_header. Used for builder pattern style call.
*
* @param pbForceInsert Used to execute insert even if primary key is already set.
*/
member procedure doPersist(self in CnSinWinPtHeader, pbForceInsert in boolean default false),
/**
* Used to apply defaults to the record.
*
* @param pbOverwrite activate overwrite.
* @param pbCopyMode activation of copy mode.
* @param psTable name of the table.
* @param psDefaultTyp Default type.
*/
member procedure applyDefaults(self in out nocopy CnSinWinPtHeader,
                               pbOverwrite in boolean default false,
                               pbCopyMode in boolean default false,
                               psTable in varchar2 default 'MIC_CN_SW_PT_HEADER',
                               psDefaultTyp in varchar2 default 'CNSINWINPTHEADER')
);
/
