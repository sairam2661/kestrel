"builtin.module"() ({
  "func.func"() <{function_type = (f32, index) -> f32, sym_name = "read_of_undef_is_not_a_conflict"}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %0 = "tensor.empty"() : () -> tensor<10xf32>
    %1 = "tensor.insert"(%arg0, %0, %arg1) : (f32, tensor<10xf32>, index) -> tensor<10xf32>
    %2 = "tensor.extract"(%0, %arg1) : (tensor<10xf32>, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

