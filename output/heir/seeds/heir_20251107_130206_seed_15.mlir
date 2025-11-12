"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128xi16>, tensor<64xi8>) -> tensor<192xi32>, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: tensor<128xi16>, %arg1: tensor<64xi8>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi16>, tensor<128xi16>) -> tensor<128xi16>
    %1 = "tensor.extract"(%0, 10) <{indices = [10]}> : (tensor<128xi16>) -> i16
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
    %3 = "tensor.insert"(%2, %arg1, 50) <{indices = [50]}> : (i16, tensor<64xi8>, i64) -> tensor<64xi8>
    %4 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
    %5 = "arith.addf"(%4, %4) : (i16, i16) -> f32
    %6 = "tensor.insert"(%5, %arg0, 20) <{indices = [20]}> : (f32, tensor<128xi16>, i64) -> tensor<128xi16>
    %7 = "func.call"(%6) <{callee = @transform_tensor}> : (tensor<128xi16>) -> tensor<128xi16>
    %8 = "arith.cmpi"("slt", %7, %6) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi16>, tensor<128xi16>) -> tensor<128xi1>
    "func.return"(%8) : (tensor<128xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<128xi16>) -> tensor<128xi16>, sym_name = "transform_tensor"}> ({
  ^bb0(%arg0: tensor<128xi16>):
    %0 = "arith.mulf"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi16>, tensor<128xi16>) -> tensor<128xi16>
    %1 = "secret.generic"(%0) ({
    ^bb0(%arg1: i16):
      %2 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (tensor<128xi16>) -> tensor<128xi16>
    "func.return"(%1) : (tensor<128xi16>) -> ()
  }) : () -> ()
}) : () -> ()