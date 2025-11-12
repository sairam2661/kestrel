"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, index), sym_name = "mixed_types_combined"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.constant"() <{value = 10 : index}> : () -> index
    "func.return"(%2, %3, %4) : (i32, f32, index) -> ()
  }) : () -> (i32, f32, index)
  "func.func"() <{function_type = (vector<4xi32>) -> (vector<4xi32>), sym_name = "vector_operations"}> ({
  ^bb0(%arg2: vector<4xi32>):
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %9 = "arith.addi"(%arg2, %5) : (vector<4xi32>, i32) -> vector<4xi32>
    %10 = "arith.addi"(%9, %6) : (vector<4xi32>, i32) -> vector<4xi32>
    %11 = "arith.addi"(%10, %7) : (vector<4xi32>, i32) -> vector<4xi32>
    %12 = "arith.addi"(%11, %8) : (vector<4xi32>, i32) -> vector<4xi32>
    "func.return"(%12) : (vector<4xi32>) -> ()
  }) : () -> (vector<4xi32>)
  "func.func"() <{function_type = (i1) -> (i32), sym_name = "ternary_logic"}> ({
  ^bb0(%arg3: i1):
    %13 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %14 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %15:2 = "scf.if"(%arg3) ({
      "scf.yield"(%13, %14) : (i32, i32) -> ()
    }, {
      "scf.yield"(%14, %13) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    %16 = "arith.addi"(%15#0, %15#1) : (i32, i32) -> i32
    "func.return"(%16) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()