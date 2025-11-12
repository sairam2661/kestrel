"builtin.module"() ({
  "util.func"() <{function_type = (tensor<1xi32>, index) -> i32, sym_name = "tensor_extract", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<1xi32>, %arg1: index):
    %0 = "tensor.extract"(%arg0, %arg1) : (tensor<1xi32>, index) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

