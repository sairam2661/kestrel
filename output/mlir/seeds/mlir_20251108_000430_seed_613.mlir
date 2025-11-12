"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32, tensor<4xi8>) -> (f32, i32), sym_name = "mixed_dialect_fuzz"}> ({
  ^bb0(%arg0: f32, %arg1: i32, %arg2: tensor<4xi8>):
    %0 = "tosa.const"() <{value = #tosa_const_float_attr}>({}): f32
    %1 = "arith.cmpf"(%arg0, %0) <{predicate = "oeq"}> : (f32, f32) -> i1
    %2 = "tosa.const"() <{value = #tosa_const_int_attr}>({}): i32
    %3 = "arith.cmpi"(%arg1, %2) <{predicate = "eq"}> : (i32, i32) -> i1
    %4 = "arith.addf"(%arg0, %0) <{fastmath = #arith_fastmath_attr}>({}): f32
    %5 = "llvm.mlir.constant"() <{value = #llvm_constant_int_attr}>({}): i32
    %6 = "scf.for"(%arg1) <{upper_bound = 10, step = 1}> ({
    ^bb1(%iv: i32):
      %7 = "arith.addi"(%iv, %5) <{}>: (i32, i32) -> i32
      "scf.yield"(%iv) <{}>: (i32) -> ()
    }) : (i32) -> (i32)
    "scf.yield"(%arg0, %arg1) <{}>: (f32, i32) -> ()
  }) : (f32, i32) -> (f32, i32)
  "func.func"() <{function_type = () -> (), sym_name = "empty_func"}> ({
  }) : () -> ()
}) : () -> ()