"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x2xi32>, tensor<2x2xi32>) -> tensor<2x2x2xi32>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<2x2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2x2xi32>, tensor<2x2xi32>) -> tensor<2x2x2xi32>
    %1 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %2 = "arith.addi"(%iv, %iv) : (index, index) -> index
      %3 = "arith.cmpi"("slt", %2, 4) : (index, index) -> i1
      %4 = "scf.if"(%3) ({
      ^bb2:
        %5 = "arith.addi"(%0, %2) : (tensor<2x2x2xi32>, index) -> tensor<2x2x2xi32>
        "scf.yield"(%5) : (tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
      }) : (i1) -> tensor<2x2x2xi32>
      "scf.yield"(%4) : (tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
    }) : (tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
    "func.return"(%1) : (tensor<2x2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()