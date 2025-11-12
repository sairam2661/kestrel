"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi8>) -> (i32, f32, vector<4xi8>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi8>):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "llvm.mlir.constant"() <{value = dense<10> : vector<4xi8>}> : () -> vector<4xi8>
    %6 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    %7 = "arith.addf"(%arg1, %4) : (f32, f32) -> f32
    %8 = "arith.addi"(%arg2, %5) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "func.return"(%6, %7, %8) : (i32, f32, vector<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()