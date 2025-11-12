"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_types_and_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "eq") : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
      %4 = "arith.addi"(%1, %0) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %5 = "arith.select"(%2, %1, %0) : (i1, i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()