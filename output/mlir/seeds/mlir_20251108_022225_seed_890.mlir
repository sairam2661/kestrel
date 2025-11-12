"builtin.module"() ({
  "func.func"() <{
    function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>,
    sym_name = "arith_add_cmpi_fuzzer"
  }> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
      %2 = "arith.addi"(%0, %1) : (tensor<2x2xi32>, tensor<2x2xi1>) -> tensor<2x2xi32>
      "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()