"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 11 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %3 = "tt.expand_dims"(%2, %c0) : (tensor<128xi1>, i32) -> tensor<128x1xi1>
    %4 = "tt.reduce"(%arg0, %arg1, %c0) <{operand_segment_sizes = [2], reduction_dim = 0, result = {tensor_type = tensor<128xi32>, reduction_op = "add"}}> : (tensor<128xi32>, tensor<128xi32>, i32) -> tensor<128xi32>
    %5 = "scf.if"(%c1) ({
      %6 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%6) : (tensor<128xi32>) -> ()
    }, {
      "scf.yield"(%arg0) : (tensor<128xi32>) -> ()
    }) : (i1) -> tensor<128xi32>
    %7 = "tt.call"("sub_function")() : () -> tensor<128xi32>
    "tt.return"(%3, %4, %5, %7) : (tensor<128x1xi1>, tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> tensor<128xi32>, sym_name = "sub_function"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    "tt.return"(%0) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()