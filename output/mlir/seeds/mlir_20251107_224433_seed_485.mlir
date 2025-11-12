"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<4xf32>) -> (i32, f32, tensor<4xf32>), sym_name = "mixed_dialect_complexity"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<4xf32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.5 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      "scf.yield"(%0) : (i32) -> ()
    }) : (i1) -> (i32)
    %7 = "arith.cmpf"(%arg1, %2) <{predicate = 0 : i64}> : (f32, f32) -> i1
    %8 = "scf.if"(%7) ({
      %9 = "arith.subf"(%arg1, %2) : (f32, f32) -> f32
      "scf.yield"(%9) : (f32) -> ()
    }, {
      "scf.yield"(%2) : (f32) -> ()
    }) : (i1) -> (f32)
    %10 = "tosa.gather"(%arg2, %0) : (tensor<4xf32>, i32) -> tensor<1xf32>
    "func.return"(%5, %8, %10) : (i32, f32, tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()