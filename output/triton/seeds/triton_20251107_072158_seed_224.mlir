"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "vectorized_ops"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %1 = "arith.subi"(%arg1, %arg0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2 = "arith.mulsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.divsi"(%2, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "arith.remsi"(%3, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> tensor<128xi1>, sym_name = "complex_cmp"}> ({
    ^bb0:
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
      %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
      %3 = "tt.reduce"(%2) <{operation = "and", neutral = dense<1> : tensor<128xi1>}> : (tensor<128xi1>) -> tensor<128xi1>
      "tt.return"(%3) : (tensor<128xi1>) -> ()
  }) : () -> ()
}) : () -> ()