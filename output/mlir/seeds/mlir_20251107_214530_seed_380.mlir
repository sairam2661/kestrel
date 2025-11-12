"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>) -> tensor<3x3xi32>, sym_name = "type_boundary_stress"}> ({
  ^bb0(%arg0: tensor<2x3xi32>):
    %0 = "arith.cmpi"(%arg0, %arg0) {"predicate" = "eq"} : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %1 = "arith.addf"(%0, %0) : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    %2 = "arith.cmpf"(%1, %1) {"predicate" = "sgt"} : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    ^bb1(%arg1: tensor<3x3xi32>):
      %3 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
      %4 = "llvm.return"(%3) : (i32) -> ()
    ^bb2(%arg2: tensor<3x3xi32>):
      %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
      %6 = "llvm.return"(%5) : (i32) -> ()
    "scf.yield"(%arg1) : (tensor<3x3xi32>) -> ()
  }, {
    ^bb3(%arg3: tensor<3x3xi32>):
      %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
      %8 = "llvm.return"(%7) : (i32) -> ()
  }) : (tensor<3x3xi32>) -> i32
}) : () -> ()