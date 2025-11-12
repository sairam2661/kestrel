"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3x4xi1>, vector<5xi32>) -> (tensor<2x3x4xi1>, vector<5xi32>), sym_name = "complex_spirv_interactions"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3x4xi1>, %arg2: vector<5xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowModes}>: (i32, i32) -> i32
    %2 = "arith.constant"() <{value = true}> : () -> i1
    %3 = "arith.andi"(%2, %2) : (i1, i1) -> i1
    %4 = "arith.select"(%3, %arg1, %arg1) : (i1, tensor<2x3x4xi1>, tensor<2x3x4xi1>) -> tensor<2x3x4xi1>
    %5 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %6 = "arith.addi"(%arg0, %5) : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %8 = "arith.subi"(%6, %7) : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %10 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %11 = "arith.addf"(%9, %10) : (f32, f32) -> f32
    %12 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32
    %13 = "arith.subf"(%11, %12) : (f32, f32) -> f32
    %14 = "arith.constant"() <{value = 4.0 : f32}> : () -> f32
    %15 = "arith.mulf"(%13, %14) : (f32, f32) -> f32
    %16 = "arith.constant"() <{value = 5.0 : f32}> : () -> f32
    %17 = "arith.divf"(%15, %16) : (f32, f32) -> f32
    %18 = "arith.constant"() <{value = 6.0 : f32}> : () -> f32
    %19 = "arith.cmpf"(%17, %18) <{predicate = "oeq"}> : (f32, f32) -> i1
    %20 = "arith.select"(%19, %arg2, %arg2) : (i1, vector<5xi32>, vector<5xi32>) -> vector<5xi32>
    %21 = "func.return"(%4, %20) : (tensor<2x3x4xi1>, vector<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()