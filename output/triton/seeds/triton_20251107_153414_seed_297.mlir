"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_tensor_op", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.cmpi"(%1, %0) <{predicate = 3 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %4 = "tt.reduce"(%3) <{operation = "add", operand_segment_sizes = dense<1> : tensor<1xi32>}> ({
    ^bb0(%arg2: i1):
      "tt.return"(%arg2) : (i1) -> ()
    }) : (tensor<32xi1>) -> i1
    %5 = "arith.select"(%4, %1, %2) : (i1, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
    "tt.return"(%6) : (tensor<32x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()