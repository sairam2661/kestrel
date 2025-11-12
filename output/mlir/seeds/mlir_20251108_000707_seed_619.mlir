"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<4xi8>) -> (i32, f32), sym_name = "mixed_types_func"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<4xi8>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20.0 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%arg1, %3) <{predicate = "oeq"}> : (f32, f32) -> i1
    %5 = "scf.if"(%4) ({
      "scf.yield"(%2, %3) : (i32, f32) -> ()
    }, {
      %6 = "tosa.const"() <{value = 0 : i32}> : () -> i32
      %7 = "tosa.const"() <{value = 0.0 : f32}> : () -> f32
      "scf.yield"(%6, %7) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%5#0, %5#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()