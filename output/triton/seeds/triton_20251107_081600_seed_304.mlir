"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_mani"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.muli"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
      %4 = "tt.reduce"(%0) <{operation = "add"}> : (tensor<16xi32>) -> i32
      %5 = "arith.cmpi"(%4, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %6 = "arith.select"(%5, %1, %0) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()