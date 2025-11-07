"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "constantInitRegWithBackEdge"}> ({
    %0 = "hw.constant"() <{value = false}> : () -> i1
    %1 = "comb.or"(%0, %3) : (i1, i1) -> i1
    %2 = "sv.reg"(%0) <{name = "reg"}> : (i1) -> !hw.inout<i1>
    %3 = "sv.read_inout"(%2) : (!hw.inout<i1>) -> i1
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

