"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<4x4xi8>) -> (i32, f32, tensor<4x4xi8>), sym_name = "complex_arith_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<4x4xi8>):
    %0 = "arith.constant"() <{value = dense<42> : tensor<4x4xi8>}> : () -> tensor<4x4xi8>
    %1 = "arith.cmpf"(%arg1, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %5 = "scf.if"(%1) ({
      %6 = "arith.addf"(%2, %2) : (f32, f32) -> f32
      %7 = "arith.addi"(%3, %3) : (i32, i32) -> i32
      "scf.yield"(%7, %6, %0) : (i32, f32, tensor<4x4xi8>) -> ()
    }, {
      "scf.yield"(%3, %2, %arg2) : (i32, f32, tensor<4x4xi8>) -> ()
    }) : (i1) -> (i32, f32, tensor<4x4xi8>)
    "func.return"(%5#0, %5#1, %5#2) : (i32, f32, tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()