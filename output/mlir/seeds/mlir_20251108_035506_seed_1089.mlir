"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "mixed_arithmetic_and_tensor"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<3x3xi8>):
    %2 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %2, "eq") : (i32, i32) -> i1
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %5 = "arith.cmpi"(%2, %4, "ne") : (i32, i32) -> i1
    %6 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %7 = "arith.cmpf"(%arg1, %6, "slt") : (f32, f32) -> i1
    %8 = "func.call"(%arg2) <{callee = @inner_func_2}> : (tensor<3x3xi8>) -> tensor<3x3xi8>
    %9 = "scf.if"(%3) ({
    ^bb0(%arg3: tensor<3x3xi8>):
      "scf.yield"(%arg3) : (tensor<3x3xi8>) -> ()
    }) : (tensor<3x3xi8>) -> tensor<3x3xi8>
    "func.return"(%9) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "inner_func_2"}> ({
  ^bb0(%arg6: tensor<3x3xi8>):
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%2, %2, %2, %arg6) ({
    ^bb0(%arg4: index, %arg5: tensor<3x3xi8>):
      %1 = "arith.addi"(%arg4, %arg4) : (index, index) -> index
      "scf.yield"(%1, %arg5) : (index, tensor<3x3xi8>) -> ()
    }) : (index, tensor<3x3xi8>) -> tensor<3x3xi8>
    "func.return"(%3) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()