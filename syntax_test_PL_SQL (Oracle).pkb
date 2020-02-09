# SYNTAX TEST "Packages/OraclePLSQL/PL_SQL (Oracle).sublime-syntax"
is
#^ keyword.block.is.oracle
/*
*
asdfasdf
# <- comment.block.oracle

 */

  asdf
# <- meta.block.declare.oracle
'test'
begin
#^ keyword.block.begin.oracle
  asdf
# <- meta.block.begin.oracle
'test'
if somthing something
#^keyword.control.oracle
  then
asdfasdf
# <- meta.block.ifblock.oracle
    for i in 1 .. 10 loop
      begin

      exception
#      ^^^^^^ keyword.other.oracle
  when others then fail fast!
#      ^^^^^^ support.type.exception.any
# <- meta.block.exception.oracle
      end test;
#         ^^^^ entity.name.function.oracle
    end loop;
  else
# ^^^^ keyword.block.else.oracle
end if;
# ^^^^ keyword.block.endif.oracle
asdf
#<- meta.block.begin.oracle
  begin
    asdfasdf
    #<- meta.block.begin.oracle
  end ;
end;
#^^ keyword.block.end.oracle

  ())
  # ^ invalid.oracle
/*
 * test test
# <- comment.block.oracle
 */
# <- meta.block.begin.oracle

FUNCTION GetAttributeDefRec(pnMsgId           IN     NUMBER,
                            psProt            IN     VARCHAR2,
                            pnAtdSid          IN     NUMBER,
                            pbLockMode        IN     BOOLEAN,
                            rRecAttributeDef  IN OUT TRecAttributeDef,
                            rbErrCode         OUT    BOOLEAN,
                            rsErrText         OUT    VARCHAR2)
  RETURN BOOLEAN IS
# <- meta.block.begin.oracle
  vRecHelpAttributeDef     TRecAttributeDef;
  vRecHelpAttributeDefLock TRecAttributeDef;
  --
  CURSOR curGet (nAtdSid NUMBER) IS
# 
#                                ^^ meta.cursor
    SELECT atdsid      , atdorder    , atdtyp         , atdtypbez   ,
           atddatentyp , atdlaenge   , atdnachkomma   , atdlovgruppe,
           atdstatus   , atdstorno   , atdcreuser     , atdcredat   ,
           atduser     , atdusedat   , atdlockversion , atdworkflow ,
           atdcopy     , atdvalidate
      FROM MIC_ATTRIBUTE_DEFINITION
     WHERE atdsid       = pnAtdSid;
  --
  CURSOR curGetLock (nAtdSid NUMBER) IS
    SELECT atdsid      , atdorder    , atdtyp         , atdtypbez   ,
           atddatentyp , atdlaenge   , atdnachkomma   , atdlovgruppe,
           atdstatus   , atdstorno   , atdcreuser     , atdcredat   ,
           atduser     , atdusedat   , atdlockversion , atdworkflow ,
           atdcopy     , atdvalidate       
      FROM MIC_ATTRIBUTE_DEFINITION
     WHERE atdsid       = pnAtdSid
       FOR UPDATE OF atdsid;
begin
# ^^^ keyword
# <- meta.block.begin.oracle
