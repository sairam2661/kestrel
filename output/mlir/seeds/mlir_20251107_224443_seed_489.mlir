"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, tensor<2x2xi32>) -> (i64, tensor<2x2xf32>), sym_name = "mixedArithAndMemrefOps"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %1 = "arith.mul"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.extui"(%1) : (i32) -> i64
    %3 = "arith.add"(%arg1, %2) : (i64, i64) -> i64
    %4 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 0.75 : f32}> : () -> f32
    %6 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "scf.if"(%6) ({
      %8 = "arith.addf"(%4, %5) : (f32, f32) -> f32
      "scf.yield"(%8) : (f32) -> ()
    }, {
      %8 = "arith.subf"(%4, %5) : (f32, f32) -> f32
      "scf.yield"(%8) : (f32) -> ()
    }) : (i1) -> (f32)
    %9 = "tosa.cast"(%arg2) <{sourceType = tensor<2x2xi32>, dstType = tensor<2x2xf32>}> : (tensor<2x2xi32>) -> tensor<2x2xf32>
    %10 = "arith.addf"(%7, %9) : (f32, tensor<2x2xf32>) -> tensor<2x2xf32>
    "func.return"(%3, %10) : (i64, tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()