"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi16>) -> (i32, f32, vector<4xi16>), sym_name = "complex_types_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi16>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = dense<[-1, 0, 1, 2]> : vector<4xi16>}> : () -> vector<4xi16>
    %3 = "tosa.ceil"(%arg1) : (f32) -> f32
    %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %5 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %6 = "arith.addi"(%arg0, %4) : (i32, i32) -> i32
    %7 = "arith.addf"(%5, %3) : (f32, f32) -> f32
    %8 = "arith.cmpf"(%7, %1) <{predicate = "oeq"}> : (f32, f32) -> i1
    %9 = "scf.if"(%8) ({
      %10 = "arith.addi"(%6, %0) : (i32, i32) -> i32
      %11 = "arith.addf"(%7, %1) : (f32, f32) -> f32
      %12 = "arith.addi"(%10, %0) : (i32, i32) -> i32
      %13 = "arith.addf"(%11, %1) : (f32, f32) -> f32
      %14 = "scf.yield"(%12, %13, %arg2) : (i32, f32, vector<4xi16>) -> ()
    }, {
      %15 = "arith.addi"(%6, %0) : (i32, i32) -> i32
      %16 = "arith.addf"(%7, %1) : (f32, f32) -> f32
      %17 = "arith.addi"(%15, %0) : (i32, i32) -> i32
      %18 = "arith.addf"(%16, %1) : (f32, f32) -> f32
      %19 = "scf.yield"(%17, %18, %arg2) : (i32, f32, vector<4xi16>) -> ()
    }) : (i1) -> (i32, f32, vector<4xi16>)
    "func.return"(%9#0, %9#1, %9#2) : (i32, f32, vector<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()