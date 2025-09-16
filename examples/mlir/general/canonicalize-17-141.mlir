"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "some_use", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (index) -> (), sym_name = "empty_tensor_canonicalize"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.empty"(%arg0) : (index) -> tensor<?x42xf32>
    %3 = "tensor.dim"(%2, %0) : (tensor<?x42xf32>, index) -> index
    %4 = "tensor.dim"(%2, %1) : (tensor<?x42xf32>, index) -> index
    "func.call"(%3, %4) <{callee = @some_use}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

