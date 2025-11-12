"builtin.module"() ({
  "func.func"() <{function_type = (tensor<100xi8>, tensor<100xi8>) -> tensor<100xi8>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<100xi8>, %arg1: tensor<100xi8>):
    %0 = "tensor_ext.assign_layout"(%arg0) <{layout = "offset:0, strides:[1]"}> : (tensor<100xi8>) -> tensor<100xi8>
    %1 = "tensor_ext.assign_layout"(%arg1) <{layout = "offset:0, strides:[1]"}> : (tensor<100xi8>) -> tensor<100xi8>
    %2 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 100 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %3 = "tensor.extract_element"(%0, %iv) : (tensor<100xi8>, index) -> i8
      %4 = "tensor.extract_element"(%1, %iv) : (tensor<100xi8>, index) -> i8
      %5 = "arith.xori"(%3, %4) : (i8, i8) -> i8
      %6 = "tensor.insert_element"(%5, %0, %iv) : (i8, tensor<100xi8>, index) -> tensor<100xi8>
      "scf.yield"() : ()
    }) : () -> ()
    "func.return"(%0) : (tensor<100xi8>) -> ()
  }) : () -> ()
}) : () -> ()