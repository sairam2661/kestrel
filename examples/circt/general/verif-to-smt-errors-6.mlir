"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "multiple_clocks"}> ({
    %0 = "verif.bmc"() <{bound = 10 : i32, initial_values = [unit], num_regs = 1 : i32}> ({
      %3 = "hw.constant"() <{value = false}> : () -> i1
      %4 = "seq.to_clock"(%3) : (i1) -> !seq.clock
      "verif.yield"(%4, %4) : (!seq.clock, !seq.clock) -> ()
    }, {
    ^bb0(%arg3: !seq.clock, %arg4: !seq.clock):
      "verif.yield"(%arg3, %arg4) : (!seq.clock, !seq.clock) -> ()
    }, {
    ^bb0(%arg0: !seq.clock, %arg1: !seq.clock, %arg2: i32):
      %1 = "hw.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "comb.icmp"(%arg2, %1) <{predicate = 8 : i64}> : (i32, i32) -> i1
      "verif.assert"(%2) : (i1) -> ()
      "verif.yield"(%arg2) : (i32) -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

