"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "backedges"}> ({
    %0 = "hwarith.add"(%1, %1) : (ui1, ui1) -> ui2
    %1 = "hwarith.constant"() <{rawValue = 1 : ui1}> : () -> ui1
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

