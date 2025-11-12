"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<2xi32>, i1) -> tensor<4xi32>, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<2xi32>, %arg2: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "scf.if"(%arg2) ({
      %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
      %6 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, index) -> i32
      %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      %8 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
      %9 = "tensor.extract"(%arg1, %1) : (tensor<2xi32>, index) -> i32
      %10 = "arith.subi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%10) : (i32) -> ()
    }) : (i1) -> i32
    %11 = "tensor.insert"(%4, %arg0, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %12 = "tensor.insert"(%1, %11, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%12) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()