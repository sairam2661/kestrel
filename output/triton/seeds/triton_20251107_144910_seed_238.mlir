"builtin.module"() ({
  "tt.func"() <{function_type = (i32, !ttptr, i1) -> (), sym_name = "complex_op_interactions"}> ({
  ^bb0(%arg0: i32, %arg1: !ttptr, %arg2: i1):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.remsi"(%2, %1) : (i32, i32) -> i32
    %5 = "arith.muli"(%3, %4) : (i32, i32) -> i32
    %6 = "arith.select"(%arg2, %5, %3) : (i1, i32, i32) -> i32
    %7 = "tt.addptr"(%arg1, %6) : (!ttptr, i32) -> !ttptr
    "scf.for"(%0, %arg0, %1) ({
    ^bb0(%arg3: i32):
      %8 = "arith.addi"(%arg3, %6) : (i32, i32) -> i32
      %9 = "scf.if"(%arg2) ({
        "scf.yield"(%8) : (i32) -> ()
      }, {
        "scf.yield"(%0) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()