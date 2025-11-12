"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_op_sequence"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.xori"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.subi"(%0, %1) : (i32, i32) -> i32
      %4 = "arith.remsi"(%0, %1) : (i32, i32) -> i32
      %5 = "arith.muli"(%2, %3) : (i32, i32) -> i32
      %6 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %7 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %9 = "tt.expand_dims"(%8, 1) : (tensor<64xi32>, i32) -> tensor<64x1xi32>
      %10 = "tt.reduce"(%9) <{operation = "add", identity = dense<0> : tensor<1xi32>}> : (tensor<64x1xi32>) -> tensor<1xi32>
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()