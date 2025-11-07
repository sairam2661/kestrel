"builtin.module"() ({
  "fsm.machine"() <{function_type = (i1) -> i1, initialState = "IDLE", sym_name = "foo"}> ({
  ^bb0(%arg2: i1):
    %7 = "fsm.variable"() <{initValue = 0 : i16, name = "cnt"}> : () -> i16
    "fsm.state"() <{sym_name = "IDLE"}> ({
      %16 = "arith.constant"() <{value = true}> : () -> i1
      "fsm.output"(%16) : (i1) -> ()
    }, {
      "fsm.transition"() <{nextState = @BUSY}> ({
        "fsm.return"(%arg2) : (i1) -> ()
      }, {
        %15 = "arith.constant"() <{value = 256 : i16}> : () -> i16
        "fsm.update"(%7, %15) : (i16, i16) -> ()
      }) : () -> ()
    }) : () -> ()
    "fsm.state"() <{sym_name = "BUSY"}> ({
      %14 = "arith.constant"() <{value = false}> : () -> i1
      "fsm.output"(%14) : (i1) -> ()
    }, {
      "fsm.transition"() <{nextState = @BUSY}> ({
        %12 = "arith.constant"() <{value = 0 : i16}> : () -> i16
        %13 = "arith.cmpi"(%7, %12) <{predicate = 1 : i64}> : (i16, i16) -> i1
        "fsm.return"(%13) : (i1) -> ()
      }, {
        %10 = "arith.constant"() <{value = 1 : i16}> : () -> i16
        %11 = "arith.subi"(%7, %10) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "fsm.update"(%7, %11) : (i16, i16) -> ()
      }) : () -> ()
      "fsm.transition"() <{nextState = @IDLE}> ({
        %8 = "arith.constant"() <{value = 0 : i16}> : () -> i16
        %9 = "arith.cmpi"(%7, %8) <{predicate = 0 : i64}> : (i16, i16) -> i1
        "fsm.return"(%9) : (i1) -> ()
      }, {
      }) : () -> ()
    }) : () -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input rst_n : i1>, parameters = [], sym_name = "bar"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1):
    %5 = "hw.constant"() <{value = true}> : () -> i1
    %6 = "fsm.hw_instance"(%5, %arg0, %arg1) <{machine = @foo, name = "foo_inst"}> : (i1, !seq.clock, i1) -> i1
    "hw.output"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "qux"}> ({
    %0 = "fsm.instance"() <{machine = @foo, name = "foo_inst"}> : () -> !fsm.instance
    %1 = "arith.constant"() <{value = true}> : () -> i1
    %2 = "fsm.trigger"(%1, %0) : (i1, !fsm.instance) -> i1
    %3 = "arith.constant"() <{value = false}> : () -> i1
    %4 = "fsm.trigger"(%3, %0) : (i1, !fsm.instance) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

