"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi16>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "mixed_types_complex_calculation"}> ({
  ^bb0(%arg0: tensor<3xi16>, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = 12345 : i32}> : () -> i32
    %1 = "arith.addf"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.cmpi"(%arg0, %0) <{predicate = "sge"}> : (tensor<3xi16>, i32) -> tensor<3xi1>
    %3 = "arith.cmpf"(%1, %1) <{predicate = "uge"}> : (f32, f32) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.addi"(%arg1, %0) : (tensor<3xi32>, i32) -> tensor<3xi32>
      "scf.yield"(%5) : (tensor<3xi32>) -> ()
    }, {
      %6 = "arith.subi"(%arg1, %0) : (tensor<3xi32>, i32) -> tensor<3xi32>
      "scf.yield"(%6) : (tensor<3xi32>) -> ()
    }) : (i1) -> tensor<3xi32>
    "func.return"(%4) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()