"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<8xi32>) -> tensor<8x1xi32>
    %1 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (tensor<8xi32>) -> tensor<8x1xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<8x1xi32>, tensor<8x1xi32>) -> tensor<8x1xi32>
    %3 = "tt.reduce"(%2) <{operation = "add"}> ({^bb1(%arg2: tensor<8x1xi32>):
      "scf.if"(%arg2) ({
        "scf.yield"(%arg2) : (tensor<8x1xi32>) -> ()
      }, {
        "scf.yield"(%arg2) : (tensor<8x1xi32>) -> ()
      }) : (tensor<8x1xi32>) -> tensor<8x1xi32>
    }) : (tensor<8x1xi32>) -> tensor<1xi32>
    %4 = "arith.subi"(%3, %3) : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    "tt.return"(%4) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()