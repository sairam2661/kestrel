"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32) -> tensor<4x4xi32>, sym_name = "mixed_control_flow_and_tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    %5 = "scf.if"(%arg1) ({
      %6 = "tensor.extract"(%arg0, %1, %1) : (tensor<4x4xi32>, index, index) -> i32
      %7 = "arith.addi"(%6, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %arg0, %1, %1) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      "scf.yield"(%8) : (tensor<4x4xi32>) -> ()
    }, {
      %9 = "scf.for"(%1, %0, %2, %4) ({
      ^bb0(%arg2: index, %arg3: tensor<4x4xi32>):
        %10 = "tensor.extract"(%arg3, %arg2, %arg2) : (tensor<4x4xi32>, index, index) -> i32
        %11 = "arith.subi"(%10, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %12 = "tensor.insert"(%11, %arg3, %arg2, %arg2) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
        "scf.yield"(%12) : (tensor<4x4xi32>) -> ()
      }) : (index, index, index, tensor<4x4xi32>) -> tensor<4x4xi32>
      "scf.yield"(%9) : (tensor<4x4xi32>) -> ()
    }) : (i32) -> tensor<4x4xi32>

    "func.return"(%5) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()