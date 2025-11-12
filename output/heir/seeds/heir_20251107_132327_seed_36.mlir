"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tensor.empty"() : () -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "scf.for"(%c0 : index) ({
      ^bb1(%i: index):
        %4 = "scf.for"(%c0 : index) ({
          ^bb2(%j: index):
            %5 = "tensor.extract"(%arg0, %i, %j) : (tensor<2x2xi32>, index, index) -> i32
            %6 = "tensor.extract"(%arg1, %i, %j) : (tensor<2x2xi32>, index, index) -> i32
            %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
            %8 = "tensor.insert"(%7, %0, %i, %j) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
            "scf.yield"(%8) : (tensor<2x2xi32>) -> tensor<2x2xi32>
        }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
        "scf.yield"(%3) : (tensor<2x2xi32>) -> tensor<2x2xi32>
      }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()