"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %2 = "arith.muli"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %3 = "arith.cmpi"(%arg0, %arg1) <{predicate = "eq"}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = "ne"}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %6 = "arith.cmpi"(%arg0, %arg1) <{predicate = "sle"}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = "sgt"}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %8 = "arith.cmpi"(%arg0, %arg1) <{predicate = "sge"}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi1>
    %9 = "func.call"(%arg0, %arg1) <{callee = @process_tensor}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    "func.return"(%9) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %2 = "arith.muli"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    "func.return"(%2) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()