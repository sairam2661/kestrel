"builtin.module"() ({
  "util.func"() <{function_type = (tensor<1xi1>, index) -> i1, sym_name = "tensor_extract_i1", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<1xi1>, %arg1: index):
    %0 = "tensor.extract"(%arg0, %arg1) : (tensor<1xi1>, index) -> i1
    "util.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

