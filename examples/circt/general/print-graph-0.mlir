"builtin.module"() ({
  "fsm.machine"() <{function_type = (i1) -> i1, initialState = "IDLE", sym_name = "foo"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = false}> : () -> i1
    %3 = "arith.constant"() <{value = 256 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = true}> : () -> i1
    %5 = "fsm.variable"() <{initValue = 0 : i16, name = "cnt"}> : () -> i16
    "fsm.state"() <{sym_name = "IDLE"}> ({
      "fsm.output"(%4) : (i1) -> ()
    }, {
      "fsm.transition"() <{nextState = @BUSY}> ({
        "fsm.return"(%arg0) : (i1) -> ()
      }, {
        "fsm.update"(%5, %3) : (i16, i16) -> ()
      }) : () -> ()
    }) : () -> ()
    "fsm.state"() <{sym_name = "BUSY"}> ({
      "fsm.output"(%2) : (i1) -> ()
    }, {
      "fsm.transition"() <{nextState = @BUSY}> ({
        %8 = "arith.cmpi"(%5, %1) <{predicate = 1 : i64}> : (i16, i16) -> i1
        "fsm.return"(%8) : (i1) -> ()
      }, {
        %7 = "arith.subi"(%5, %0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "fsm.update"(%5, %7) : (i16, i16) -> ()
      }) : () -> ()
      "fsm.transition"() <{nextState = @IDLE}> ({
        %6 = "arith.cmpi"(%5, %1) <{predicate = 0 : i64}> : (i16, i16) -> i1
        "fsm.return"(%6) : (i1) -> ()
      }, {
      }) : () -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

