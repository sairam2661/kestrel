"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_reduce_and_addptr"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "tt.reduce"(%arg0) <{operation = "add", result.type = tensor<128xi32>, operands = [0], init_value = {value = dense<0> : tensor<128xi32>}, operand.index = 0}> : (tensor<128xi32>) -> tensor<128xi32>
      %1 = "tt.reduce"(%arg1) <{operation = "add", result.type = tensor<128xi32>, operands = [0], init_value = {value = dense<0> : tensor<128xi32>}, operand.index = 0}> : (tensor<128xi32>) -> tensor<128xi32>
      %2 = "tt.addptr"(%0, %1) <{alignment = 16}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%2) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()