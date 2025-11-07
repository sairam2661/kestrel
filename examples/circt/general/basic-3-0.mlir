"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "test1"}> ({
    %0 = "hwarith.constant"() <{rawValue = 0 : ui1}> : () -> ui1
    %1 = "hwarith.constant"() <{rawValue = 1 : ui1}> : () -> ui1
    %2 = "hwarith.constant"() <{rawValue = 2 : ui2}> : () -> ui2
    %3 = "hwarith.constant"() <{rawValue = 22 : ui5}> : () -> ui5
    %4 = "hw.constant"() <{value = 7 : i5}> : () -> i5
    %5 = "hwarith.cast"(%4) : (i5) -> ui3
    %6 = "hwarith.add"(%1, %1) : (ui1, ui1) -> ui2
    %7 = "hwarith.add"(%0, %2) : (ui1, ui2) -> ui3
    %8 = "hwarith.mul"(%2, %3) : (ui2, ui5) -> ui7
    %9 = "hwarith.add"(%8, %1) : (ui7, ui1) -> ui8
    %10 = "hwarith.sub"(%9, %2) : (ui8, ui2) -> si9
    %11 = "hwarith.div"(%10, %1) : (si9, ui1) -> si9
    %12 = "hwarith.add"(%11, %7) : (si9, ui3) -> si10
    %13 = "hwarith.cast"(%12) : (si10) -> i9
    %14 = "hwarith.icmp"(%6, %11) <{predicate = 0 : i64}> : (ui2, si9) -> i1
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

