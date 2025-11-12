"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_op_combination"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<8> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.addi"(%arg1, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.remsi"(%arg2, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.xori"(%1, %arg2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.cmpi"(%3, %0) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<128xi1>
    %5 = "tt.reduce"(%4) <{operation = "tt.add"}> ({  %6 = "scf.yield"(%4) : (tensor<128xi1>) -> () }) : (tensor<128xi1>) -> tensor<1xi32>
    "tt.return"(%5) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()