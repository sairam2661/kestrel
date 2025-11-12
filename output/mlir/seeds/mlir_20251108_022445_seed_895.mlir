"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, tensor<2x2xi32>) -> tensor<2x2xf32>, sym_name = "mixed_type_arithmetic"}> ({
  ^bb0(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addf"(%arg0, %0) : (tensor<2x2xf32>, f32) -> tensor<2x2xf32>
    %3 = "arith.addi"(%arg1, %1) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    %4 = "arith.cmpi"("slt", %3, %1) : (tensor<2x2xi32>, i32) -> tensor<2x2xi1>
    "scf.if"(%4) ({
    ^bb1(%arg2: tensor<2x2xi1>):
      "func.return"(%2) : (tensor<2x2xf32>) -> ()
    }) {
    } : (tensor<2x2xi1>) -> ()
    "func.return"(%arg0) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()