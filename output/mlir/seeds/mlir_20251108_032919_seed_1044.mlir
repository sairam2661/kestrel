"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, index) -> (i32, f32, index), sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "tosa.const"() <{values = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %5 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %6 = "scf.if"(%arg0) ({
      %7 = "arith.cmpi"("eq", %arg0, %0) : (i32, i32) -> i1
      "scf.yield"(%7) : (i1) -> ()
    }, {
      %8 = "arith.cmpf"("oeq", %arg1, %1) : (f32, f32) -> i1
      "scf.yield"(%8) : (i1) -> ()
    }) : (i32) -> i1
    %9 = "scf.for"(%arg2, %2, %arg0) ({
    ^bb1(%arg3: index):
      %10 = "arith.addi"(%arg3, %2) : (index, index) -> index
      "scf.yield"(%10) : (index) -> ()
    }) : (index, index, i32) -> index
    "func.return"(%arg0, %arg1, %2) : (i32, f32, index) -> ()
  }) : () -> ()
}) : () -> ()