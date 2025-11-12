"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> tensor<8xi32>, sym_name = "mixed_control_flow_example"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 6 : index}> : () -> index
    %6 = "arith.constant"() <{value = 7 : index}> : () -> index
    %7 = "arith.constant"() <{value = 8 : index}> : () -> index
    %8 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.cmpi"(%8, %7, "slt") : (i32, i32) -> i1
    "scf.if"(%9) ({
      %10 = "tensor.extract"(%arg0, %5) : (tensor<8xi32>, index) -> i32
      %11 = "arith.addi"(%10, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %12 = "tensor.insert"(%11, %arg0, %5) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%12) : (tensor<8xi32>) -> ()
    }, {
      %13 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, index) -> i32
      %14 = "arith.subi"(%13, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %15 = "tensor.insert"(%14, %arg0, %6) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%15) : (tensor<8xi32>) -> ()
    }) : (i1) -> tensor<8xi32>
    "func.return"(%12) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()