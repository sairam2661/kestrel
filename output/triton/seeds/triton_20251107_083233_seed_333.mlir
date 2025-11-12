"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.divsi"(%2, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.xori"(%3, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "tt.reduce"() <{operation = "add"}> ({
      ^bb1(%arg2: tensor<128xi32>):
        "scf.yield"(%arg2) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
}) : () -> ()