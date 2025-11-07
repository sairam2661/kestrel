"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "TestDanglingFIFO"}> ({
    %2 = "hw.constant"() <{value = false}> : () -> i1
    %3:2 = "esi.wrap.fifo"(%2, %2) : (i1, i1) -> (!esi.channel<i1, FIFO>, i1)
    "hw.output"() : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<>, parameters = [], sym_name = "TestDanglingValidReady"}> ({
    %0 = "hw.constant"() <{value = false}> : () -> i1
    %1:2 = "esi.wrap.vr"(%0, %0) : (i1, i1) -> (!esi.channel<i1>, i1)
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

