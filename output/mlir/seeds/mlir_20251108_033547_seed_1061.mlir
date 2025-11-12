"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, memref<4xi32>) -> (i32, f32), sym_name = "complex_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: memref<4xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c0_f32 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %c1_f32 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %c1_f32) : (f32, f32) -> f32
    %2 = "memref.load"(%arg2, %c0_i32) : (memref<4xi32>, i32) -> i32
    %3 = "memref.load"(%arg2, %c1_i32) : (memref<4xi32>, i32) -> i32
    %4 = "memref.load"(%arg2, %c2_i32) : (memref<4xi32>, i32) -> i32
    %5 = "memref.load"(%arg2, %c3_i32) : (memref<4xi32>, i32) -> i32
    %6 = "arith.addi"(%2, %3) : (i32, i32) -> i32
    %7 = "arith.addi"(%4, %5) : (i32, i32) -> i32
    %8 = "arith.addi"(%6, %7) : (i32, i32) -> i32
    %9 = "arith.cmpf"(%1, %c0_f32) <{predicate = "oeq"}> : (f32, f32) -> i1
    %10 = "scf.if"(%9) ({
      %11 = "arith.addi"(%0, %c1_i32) : (i32, i32) -> i32
      %12 = "arith.addf"(%1, %c1_f32) : (f32, f32) -> f32
      "scf.yield"(%11, %12) : (i32, f32) -> ()
    }, {
      %13 = "arith.addi"(%0, %c2_i32) : (i32, i32) -> i32
      %14 = "arith.addf"(%1, %c1_f32) : (f32, f32) -> f32
      "scf.yield"(%13, %14) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%10#0, %10#1) : (i32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "helper_function"}> ({
  ^bb0(%arg0: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()