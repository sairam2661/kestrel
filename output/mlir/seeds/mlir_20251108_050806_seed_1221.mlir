"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (index, i1), sym_name = "complex_example"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i64 = "arith.constant"() <{value = 2 : i64}> : () -> i64
      %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
      %1 = "arith.muli"(%arg1, %c2_i64) : (i64, i64) -> i64
      %2 = "arith.extsi"(%0) : (i32) -> index
      %3 = "arith.cmpi"("slt", %0, %1) : (i32, i64) -> i1
      "func.return"(%2, %3) : (index, i1) -> ()
    }) : () -> ()
  "func.func"() <{function_type = () -> (i32, i64), sym_name = "call_complex_example"}> ({
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i64 = "arith.constant"() <{value = 4 : i64}> : () -> i64
    %4 = "func.call"(%c3_i32, %c4_i64) <{callee = @complex_example}> : (i32, i64) -> (index, i1)
    "func.return"(%4#0, %4#1) : (index, i1) -> ()
  }) : () -> ()
}) : () -> ()