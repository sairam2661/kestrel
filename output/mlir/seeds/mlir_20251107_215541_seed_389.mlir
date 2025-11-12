"builtin.module"() ({
  "func.func sym_name = \"complex_op_order\""() <{function_type = (i32, i64) -> (f32, i1), sym_name = "complex_op_order"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 10.5 : f32}> : () -> f32
    %1 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    %2 = "arith.const"() <{value = 15 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %2, "slt") : (i32, i32) -> i1
    "scf.if"(%4) ({
      ^bb1:
        %5 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> () else 	.result 0
    : (i32) -> ()
  }) : () -> ()
}) : () -> ()