"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"(%arg0) <{start = 0 : index, end = 128 : index, step = 1 : index}> : (tensor<128xi32>) -> tensor<128xi32>
    %1 = "tt.reduce"(%0, %arg1) <{operation = #ttg_reduction_operation_sum, result_type = tensor<128xi32>, initial_value = 0 : i32}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%1) : (tensor<128xi32>) -> ()
  }) : () -> ()
  
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "nested_reduce"}> ({
  ^bb0(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
    %4 = "tt.make_range"(%arg2) <{start = 0 : index, end = 64 : index, step = 1 : index}> : (tensor<64xi32>) -> tensor<64xi32>
    %5 = "tt.reduce"(%4, %arg3) <{operation = #ttg_reduction_operation_sum, result_type = tensor<64xi32>, initial_value = 0 : i32}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    
    %6 = "tt.make_range"(%5) <{start = 0 : index, end = 64 : index, step = 1 : index}> : (tensor<64xi32>) -> tensor<64xi32>
    %7 = "tt.reduce"(%6, %5) <{operation = #ttg_reduction_operation_sum, result_type = tensor<64xi32>, initial_value = 0 : i32}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    
    "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
  
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "expand_and_reduce"}> ({
  ^bb0(%arg4: tensor<128xi32>):
    %8 = "tt.expand_dims"(%arg4) <{dims = [0 : index]}> : (tensor<128xi32>) -> tensor<1x128xi32>
    %9 = "tt.make_range"(%8) <{start = 0 : index, end = 1 : index, step = 1 : index}> : (tensor<1x128xi32>) -> tensor<1x128xi32>
    %10 = "tt.reduce"(%9, %8) <{operation = #ttg_reduction_operation_sum, result_type = tensor<128xi32>, initial_value = 0 : i32}> : (tensor<1x128xi32>, tensor<1x128xi32>) -> tensor<128xi32>
    
    "tt.return"(%10) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()