"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<2x4xi64>) -> (i32, f32, tensor<2x4xi64>), sym_name = "complex_types_and_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<2x4xi64>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "tosa.const"() <{values = dense<1> : tensor<2x4xi64>}> : () -> tensor<2x4xi64>

    "scf.if"(%0) ({
      %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %5 = "tosa.add"(%arg2, %2) : (tensor<2x4xi64>, tensor<2x4xi64>) -> tensor<2x4xi64>
      "scf.yield"(%3, %4, %5) : (i32, f32, tensor<2x4xi64>) -> ()
    }, {
      %6 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
      %7 = "arith.cmpf"(%arg1, %1, "eq") : (f32, f32) -> i1
      %8 = "tosa.equal"(%arg2, %2) : (tensor<2x4xi64>, tensor<2x4xi64>) -> tensor<2x4xi1>
      "scf.yield"(%0, %1, %arg2) : (i32, f32, tensor<2x4xi64>) -> ()
    }) : (i32) -> (i32, f32, tensor<2x4xi64>)

    "func.return"(%3, %4, %5) : (i32, f32, tensor<2x4xi64>) -> ()
  }) : () -> ()
}) : () -> ()