"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "multiple_assertions_bmc"}> ({
    %0 = "verif.bmc"() <{bound = 10 : i32, initial_values = [], num_regs = 0 : i32}> ({
      "verif.yield"() : () -> ()
    }, {
      "verif.yield"() : () -> ()
    }, {
    ^bb0(%arg0: i32, %arg1: i32):
      %1 = "hw.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "comb.icmp"(%arg0, %1) <{predicate = 8 : i64}> : (i32, i32) -> i1
      "verif.assert"(%2) : (i1) -> ()
      %3 = "comb.icmp"(%arg1, %1) <{predicate = 8 : i64}> : (i32, i32) -> i1
      "verif.assert"(%3) : (i1) -> ()
      %4 = "comb.add"(%arg0, %arg1) : (i32, i32) -> i32
      "verif.yield"(%4) : (i32) -> ()
    }) : () -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

