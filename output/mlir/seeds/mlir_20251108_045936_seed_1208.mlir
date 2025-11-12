"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16, i32) -> (i64, f32, vector<4xi32>), sym_name = "mixed_types_and_constants"}> ({
  ^bb0(%arg0: i8, %arg1: i16, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "llvm.mlir.constant"() <{value = dense<[0, 1, 2, 3]> : vector<4xi32>}> : () -> vector<4xi32>
    %3 = "arith.extsi"(%arg0) : (i8) -> i32
    %4 = "arith.extsi"(%arg1) : (i16) -> i32
    %5 = "arith.addsi"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.extsi"(%5) : (i32) -> i64
    %7 = "arith.muli"(%arg2, %3) : (i32, i32) -> i32
    %8 = "arith.extsi"(%7) : (i32) -> i64
    "func.return"(%6, %1, %2) : (i64, f32, vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()