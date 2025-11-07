"builtin.module"() ({
  "fsm.machine"() <{function_type = () -> (), initialState = "State1", sym_name = "OpsInTransition"}> ({
    "fsm.state"() <{sym_name = "State1"}> ({
      "fsm.output"() : () -> ()
    }, {
      %0 = "hw.constant"() <{value = false}> : () -> i1
      "fsm.transition"() <{nextState = @State1}> ({
        "fsm.return"(%0) : (i1) -> ()
      }, {
      }) : () -> ()
    }) : () -> ()
    "fsm.state"() <{sym_name = "State2"}> ({
      "fsm.output"() : () -> ()
    }, {
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

