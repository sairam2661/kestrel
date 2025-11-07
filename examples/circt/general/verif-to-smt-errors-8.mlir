"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "wrong_initial_type"}> ({
    %0 = "verif.bmc"() <{bound = 10 : i32, initial_values = [-1 : i7], num_regs = 1 : i32}> ({
      %2 = "hw.constant"() <{value = false}> : () -> i1
      %3 = "seq.to_clock"(%2) : (i1) -> !seq.clock
      "verif.yield"(%3) : (!seq.clock) -> ()
    }, {
    ^bb0(%arg2: !seq.clock):
      "verif.yield"(%arg2) : (!seq.clock) -> ()
    }, {
    ^bb0(%arg0: !seq.clock, %arg1: i8):
      %1 = "hw.constant"() <{value = true}> : () -> i1
      "verif.assert"(%1) : (i1) -> ()
      "verif.yield"(%arg1) : (i8) -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

