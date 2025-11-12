"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %1 = "arith.constant"() <{value = dense<-1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.select"(%0, %arg0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.subi"(%arg1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %6 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %7 = "arith.select"(%5, %arg1, %6) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %8 = "tt.expand_dims"(%arg0) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
    %9 = "tt.addptr"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %10 = "tt.reduce"(%arg0, %9) <{operation = "tt.reduce.add", operand_segment_sizes = dense<[1, 1]> : vector<2xi32>}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<1xi32>
    %11 = "tt.splat"(%10) : (tensor<1xi32>) -> tensor<16xi32>
    "tt.return"(%11) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()