"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
      %2 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %3 = "arith.select"(%2, %0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "scf.for"(%1, %3, %1) ({
        ^bb1(%arg2: i32, %arg3: tensor<16xi32>, %arg4: tensor<16xi32>):
          %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%arg4, %arg5) : (tensor<16xi32>, tensor<16xi32>) -> ()
      }) : (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>)
      "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()