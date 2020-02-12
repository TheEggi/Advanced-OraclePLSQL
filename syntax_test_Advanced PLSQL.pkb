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