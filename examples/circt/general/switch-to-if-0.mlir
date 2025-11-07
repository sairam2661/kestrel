"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "example"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %2 = "scf.index_switch"(%1) <{cases = array<i64: 2, 5, 7>}> ({
      %6 = "arith.constant"() <{value = 50 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %5 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %4 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %3 = "arith.constant"() <{value = 30 : i32}> : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (index) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

