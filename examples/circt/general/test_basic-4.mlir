"builtin.module"() ({
  %0 = "hw.constant"() <{value = 0 : i16}> : () -> i16
  "fsm.machine"() <{function_type = () -> i16, initialState = "A", sym_name = "M1"}> ({
    "fsm.state"() <{sym_name = "A"}> ({
      "fsm.output"(%0) : (i16) -> ()
    }, {
    }) : () -> ()
    "fsm.state"() <{sym_name = "B"}> ({
      "fsm.output"(%0) : (i16) -> ()
    }, {
    }) : () -> ()
  }) : () -> ()
  "fsm.machine"() <{function_type = () -> i16, initialState = "A", sym_name = "M2"}> ({
    "fsm.state"() <{sym_name = "A"}> ({
      "fsm.output"(%0) : (i16) -> ()
    }, {
    }) : () -> ()
    "fsm.state"() <{sym_name = "B"}> ({
      "fsm.output"(%0) : (i16) -> ()
    }, {
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

