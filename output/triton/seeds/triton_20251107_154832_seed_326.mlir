"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi1>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi1>, %arg3: tensor<32xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.muli"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
    %4 = "arith.subi"(%arg0, %arg3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "scf.for"(%arg0) <{lowerBound = 0 : index, upperBound = 32 : index, step = 1 : index}> ({
      ^bb1(%iv: index, %arg0: tensor<32xi32>):
        %6 = "arith.addi"(%arg0, %3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }) : (index, tensor<32xi32>) -> tensor<32xi32>
    %7 = "tt.reduce"(%5, %arg0) <{operation = "add"}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %8 = "scf.if"(%arg2) ({
      "scf.yield"(%7) : (tensor<32xi32>) -> ()
    }, {
      "scf.yield"(%arg0) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi1>) -> tensor<32xi32>
    "tt.return"(%8) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()