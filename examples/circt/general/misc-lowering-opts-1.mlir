#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/misc-lowering-opts-1.mlir":4:41)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "caseInsensitiveKeywords"}> ({
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input Module : i1, output MoDuLe : i1>, parameters = [], result_locs = [#loc], sym_name = "MODULE"}> ({
  ^bb0(%arg0: i1):
    "hw.output"(%arg0) : (i1) -> ()
  }) : () -> ()
}) {circt.loweringOptions = "caseInsensitiveKeywords"} : () -> ()

