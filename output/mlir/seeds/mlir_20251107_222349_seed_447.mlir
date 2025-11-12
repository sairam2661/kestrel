"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedDialectsTest"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "tosa.const"() <{value = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 1}> : (i32, tensor<1xi32>) -> i1
    %2 = "arith.cmpf"(%arg1, %arg1) <{predicate = 4}> : (f32, f32) -> i1
    %3 = "scf.if"(%1) ({
    ^bb1(%arg2: i1):
      %4 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"(%4) : (f32)
    }) {
    } : (i1) -> (f32)
    %5 = "scf.if"(%2) ({
    ^bb2(%arg3: i1):
      %6 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32)
    }) {
    } : (i1) -> (i32)
    "func.return"(%5, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()