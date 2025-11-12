"builtin.module"() ({
  "tt.func"() <{function_type = (!ttPtr, !ttPtr) -> (), sym_name = "compositeOpTest"}> ({
    ^bb0(%arg0: !ttPtr, %arg1: !ttPtr):
      %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "arith.xori"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.subi"(%2, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.remsi"(%3, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
      %6 = "arith.xori"(%4, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %7 = "arith.subi"(%6, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %8 = "arith.remsi"(%7, %5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %9 = "arith.muli"(%8, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %10 = "arith.constant"() <{value = dense<8> : tensor<16xi32>}> : () -> tensor<16xi32>
      %11 = "arith.xori"(%9, %10) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %12 = "tt.addptr"(%arg0, %11) : (!ttPtr, tensor<16xi32>) -> !ttPtr
      %13 = "tt.expand_dims"(%12, 1) : (!ttPtr) -> !ttPtr
      %14 = "tt.reduce"(%13, 1) <{operation = #ttg_reduction_op_sum}> : (!ttPtr) -> !ttPtr
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()