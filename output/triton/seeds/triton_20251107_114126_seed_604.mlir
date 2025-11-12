"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.select"(%arg0, %arg1, %0) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "tt.call"() <{callee = @mixed_ops}> : () -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "mixed_ops"}> ({
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()