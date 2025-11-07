#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/cse-1-0.mlir":4:30)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/cse-1-0.mlir":11:32)
"builtin.module"() ({
  "sv.macro.decl"() <{sym_name = "PRINTF_COND_"}> : () -> ()
  "hw.module"() <{module_type = !hw.modty<output out : i1>, parameters = [], result_locs = [#loc], sym_name = "cse_macro_ref"}> ({
    %3 = "sv.macro.ref.expr"() <{macroName = @PRINTF_COND_}> : () -> i1
    %4 = "sv.macro.ref.expr"() <{macroName = @PRINTF_COND_}> : () -> i1
    %5 = "comb.and"(%3, %4) : (i1, i1) -> i1
    "hw.output"(%5) : (i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<output out : i1>, parameters = [], result_locs = [#loc1], sym_name = "nocse_macro_ref"}> ({
    %0 = "sv.macro.ref.expr.se"() <{macroName = @PRINTF_COND_}> : () -> i1
    %1 = "sv.macro.ref.expr.se"() <{macroName = @PRINTF_COND_}> : () -> i1
    %2 = "comb.and"(%0, %1) : (i1, i1) -> i1
    "hw.output"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

