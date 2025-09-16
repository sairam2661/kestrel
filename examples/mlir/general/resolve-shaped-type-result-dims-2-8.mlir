"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "collapse_shape"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 7 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %3 = "tensor.generate"(%1) ({
    ^bb0(%arg0: index, %arg1: index):
      "tensor.yield"(%2) : (i16) -> ()
    }) : (index) -> tensor<?x22xi16>
    %4 = "tensor.collapse_shape"(%3) <{reassociation = [[0, 1]]}> : (tensor<?x22xi16>) -> tensor<?xi16>
    %5 = "tensor.dim"(%4, %0) : (tensor<?xi16>, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()

