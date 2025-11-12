"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "add_tensors"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.expand_shape"(%arg0) <{reassociation = [[0], [1]]}> : (tensor<?xf32>) -> tensor<?x?xf32>
    %2 = "tensor.expand_shape"(%arg1) <{reassociation = [[0], [1]]}> : (tensor<?xf32>) -> tensor<?x?xf32>
    %3 = "arith.addf"(%1, %2) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    %4 = "tensor.collapse_shape"(%3) <{reassociation = [[0, 1]]}> : (tensor<?x?xf32>) -> tensor<?xf32>
    "spirv.ReturnValue"(%4) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()