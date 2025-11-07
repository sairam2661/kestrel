"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "wires"}> ({
    %0 = "sv.wire"() <{name = "r52"}> : () -> !hw.inout<ui2>
    %1 = "sv.reg"() <{name = "r53"}> : () -> !hw.inout<ui2>
    %2 = "sv.read_inout"(%0) : (!hw.inout<ui2>) -> ui2
    %3 = "sv.read_inout"(%1) : (!hw.inout<ui2>) -> ui2
    %4 = "hwarith.cast"(%2) : (ui2) -> i2
    %5 = "hwarith.cast"(%3) : (ui2) -> i2
    %6 = "comb.icmp"(%5, %4) <{predicate = 0 : i64}> : (i2, i2) -> i1
    %7 = "hwarith.constant"() <{rawValue = 2 : ui2}> : () -> ui2
    "sv.assign"(%0, %7) : (!hw.inout<ui2>, ui2) -> ()
    "sv.assign"(%1, %7) : (!hw.inout<ui2>, ui2) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

