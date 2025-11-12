"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<16xi32>):
      %1 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %2 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
      %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.cmpi"(%arg0, %3) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %5 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
      %6 = "arith.select"(%4, %arg0, %5) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %7 = "scf.if"(%4) ({
        ^bb1:
          %8 = "arith.constant"() <{value = dense<8> : tensor<16xi32>}> : () -> tensor<16xi32>
          "scf.yield"(%8) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> (tensor<16xi32>)
      %9 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%9) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()