#map = affine_map<(d0) -> (d0, d0)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xf32>) -> tensor<2x2xi32>, sym_name = "mixed_type_op"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xf32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    %3 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    %4 = "tensor.extract"(%arg1, %0, %0) : (tensor<2x2xf32>, index, index) -> f32
    %5 = "arith.subf"(%4, %1) : (f32, f32) -> f32
    %6 = "arith.mulf"(%4, %1) : (f32, f32) -> f32
    %7 = "arith.addf"(%5, %6) : (f32, f32) -> f32
    %8 = "arith.cmpi"(%4, %1, "OEQ") : (f32, f32) -> i1
    %9 = "arith.select"(%8, %0, %0) : (i1, i32, i32) -> i32
    %10 = "scf.for"(%0, %0, %0) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb0(%iv: i32):
      %11 = "arith.addi"(%iv, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) : () -> i32
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()