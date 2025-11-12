"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "dynamic_add_max"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>, %arg2: tensor<2xi32>):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c0_index = "arith.constant"() <{value = 0 : index}> : () -> index
      %c1_index = "arith.constant"() <{value = 1 : index}> : () -> index
      %max_val = "arith.cmpi"(%arg2, %c0_i32, "gt") : (tensor<2xi32>, i32) -> tensor<2xi1>
      %cond = "arith.cmpi"(%arg2, %c1_i32, "eq") : (tensor<2xi32>, i32) -> tensor<2xi1>
      %select_val = "arith.select"(%max_val, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %final_result = "arith.addi"(%select_val, %arg2) <{overflowFlags = #arith_overflowFlagsAttribute}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "func.return"(%final_result) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<2xi32>, sym_name = "generate_tensor"}> ({
    ^bb0:
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %result = "tensor.empty"() <{type = tensor<2xi32>}> : () -> tensor<2xi32>
      %insert0 = "tensor.insert"(%c0_i32, %result, %c0_index) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      %insert1 = "tensor.insert"(%c1_i32, %insert0, %c1_index) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      "func.return"(%insert1) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<2xi32>, sym_name = "main"}> ({
    ^bb0:
      %tensorA = "func.call"() <{callee = @generate_tensor}> : () -> tensor<2xi32>
      %tensorB = "func.call"() <{callee = @generate_tensor}> : () -> tensor<2xi32>
      %tensorC = "func.call"() <{callee = @generate_tensor}> : () -> tensor<2xi32>
      %result = "func.call"(%tensorA, %tensorB, %tensorC) <{callee = @dynamic_add_max}> : (tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "func.return"(%result) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()