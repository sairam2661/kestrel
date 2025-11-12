"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "scf.for"(%c0 : index) ({
      ^bb1(%iv: index):
        %2 = "arith.muli"(%iv, %iv) : (index, index) -> index
        %3 = "arith.constant"() <{value = 2 : ui32}> : ui32
        %4 = "arith.addi"(%2, %3) : (index, ui32) -> index
        "scf.yield"(%4) : (index) -> ()
    }) : (index) -> tensor<2x2xi32>
    %5 = "scf.if"(%c1 : i1) ({
      %6 = "arith.subi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%6) : (tensor<2x2xi32>) -> ()
    }) : (i1) -> tensor<2x2xi32>
    %7 = "arith.addi"(%0, %5) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%7) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()