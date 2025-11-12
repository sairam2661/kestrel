"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<3x4xi32>, tensor<i1>) -> tensor<3x4xi32>, sym_name = "fuzz_complex"}> ({
  ^bb0(%arg0: tensor<3x4xi32>, %arg1: tensor<3x4xi32>, %arg2: tensor<i1>):
    %0 = "arith.cmpf"(%arg2, "true") <{operation = "ne"}> : (tensor<i1>, tensor<i1>) -> tensor<i1>
    %1 = "scf.if"(%0) ({
    ^bb0(%arg3: tensor<i1>):
      %2 = "arith.addf"(%arg0, %arg1) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
      "scf.yield"(%2) : (tensor<3x4xi32>) -> ()
    }, {
    ^bb0(%arg4: tensor<i1>):
      %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<i1>
      "scf.yield"(%3) : (tensor<i1>) -> ()
    }) : (tensor<i1>) -> tensor<3x4xi32>
    "func.return"(%1) : (tensor<3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()