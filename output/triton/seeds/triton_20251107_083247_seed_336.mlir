"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mix_complex_ops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.muli"(%0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.divsi"(%1, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.xori"(%2, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "scf.for"() <{lowerBound = 0 : index, upperBound = 32 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %6 = "arith.addi"(%iv, %5) : (index, i32) -> index
        "scf.yield"() : () -> ()
    }) : () -> ()
    %7 = "tt.reduce"() <{operation = "add"}> ({
      ^bb2(%acc: tensor<32xi32>, %val: tensor<32xi32>):
        %8 = "arith.addi"(%acc, %val) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%8) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%7) : (tensor<32xi32>) -> ()
  }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
}) : () -> ()