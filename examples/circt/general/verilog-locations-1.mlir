"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clock : i1, input reset : i1, input in4 : i4>, parameters = [], sym_name = "SimpleConstPrintReset"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i4):
    %0 = "sv.wire"() <{name = "w"}> : () -> !hw.inout<i4>
    %1 = "sv.reg"() <{name = "q"}> : () -> !hw.inout<i4>
    %2 = "hw.constant"() <{value = 1 : i4}> : () -> i4
    "sv.assign"(%0, %2) : (!hw.inout<i4>, i4) -> ()
    "sv.always"(%arg0, %arg1) <{events = [0 : i32, 0 : i32]}> ({
      "sv.if"(%arg1) ({
        "sv.passign"(%1, %2) : (!hw.inout<i4>, i4) -> ()
      }, {
        "sv.passign"(%1, %arg2) : (!hw.inout<i4>, i4) -> ()
      }) : (i1) -> ()
    }) : (i1, i1) -> ()
    "hw.output"() : () -> ()
  }) : () -> ()
}) {circt.loweringOptions = "locationInfoStyle=none,emitVerilogLocations"} : () -> ()

