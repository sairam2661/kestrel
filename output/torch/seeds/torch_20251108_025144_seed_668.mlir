"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> !torch$list, sym_name = "f"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %c0 = "arith.constant"() : () -> index
    %c1 = "arith.constant"() : () -> index
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %1 = "torch.prim.ListConstruct"(%0) : (tensor<?xi1>) -> !torch$list
    "func.return"(%1) : (!torch$list) -> ()
  }) : () -> ()
}) : () -> ()