"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0, "slt") : (i32, i32) -> i1
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      scf.if %1, "loc" : !locusetion_attribute "arith.cmpi"() : (i32, i32) -> i1
      ^bb1:  %2 = "arith.addi"(%c1_i32, %c1_i32) : (i32, i32) -> i32
      ^bb2:  %3 = "arith.subi"(%c1_i32, %c1_i32) : (i32, i32) -> i32
      scf.yield %2 : i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()