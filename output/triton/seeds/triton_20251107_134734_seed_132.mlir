"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "tensor_xor"}> ({
    ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
      %0 = "arith.constant"() <{value = dense<5> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
      %1 = "arith.xori"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %2 = "arith.addi"(%1, %0) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %3 = "arith.select"(%arg0, %2, %arg1) <{predicate = "slt"}> : (tensor<16x16xi32>, tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      "tt.return"(%3) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
      %5 = "arith.subi"(%arg2, %arg3) : (i32, i32) -> i32
      %6 = "arith.select"(%arg2, %5, %4) <{predicate = "slt"}> : (i32, i32, i32) -> i32
      "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "tensor_logic"}> ({
    ^bb0(%arg4: tensor<16x16xi32>, %arg5: tensor<16x16xi32>):
      %7 = "arith.cmpi"(%arg4, %arg5, "slt") : (tensor<16x16xi32>, tensor<16x16xi32>) -> i1
      %8 = "arith.select"(%7, %arg4, %arg5) : (i1, tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      "tt.return"(%8) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "tensor_reduce"}> ({
    ^bb0(%arg6: tensor<16x16xi32>, %arg7: tensor<16x16xi32>):
      %9 = "tt.reduce"(%arg7) : (tensor<16x16xi32>) -> tensor<16x16xi32>
      "tt.return"(%9) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()