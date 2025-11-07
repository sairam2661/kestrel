"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "temporaryWireForReg"}> ({
    %0 = "sv.read_inout"(%3) : (!hw.inout<i1>) -> i1
    %1 = "sv.read_inout"(%2) : (!hw.inout<i1>) -> i1
    %2 = "sv.reg"(%0) <{name = "b"}> : (i1) -> !hw.inout<i1>
    %3 = "sv.reg"(%1) <{name = "a"}> : (i1) -> !hw.inout<i1>
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

