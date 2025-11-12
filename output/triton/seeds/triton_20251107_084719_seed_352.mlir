"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> (), sym_name = "complex_example"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %1 = "tt.addptr"(%arg0, %0) : (tensor<i32>, tensor<256xi32>) -> tensor<256xi32>
    %2 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<256xi32>) -> tensor<256x1xi32>
    %3 = "tt.reduce"(%2) <{operation = "add"}> : (tensor<256x1xi32>) -> tensor<256xi32>
    %4 = "tt.addptr"(%arg1, %3) : (tensor<i32>, tensor<256xi32>) -> tensor<256xi32>
    %5 = "tt.reduce"(%4) <{operation = "mul"}> : (tensor<256xi32>) -> tensor<256xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 0 : i32}> : (tensor<256xi32>) -> tensor<1x256xi32>
    %7 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %8 = "tt.addptr"(%6, %7) : (tensor<1x256xi32>, tensor<10xi32>) -> tensor<1x256xi32>
    %9 = "tt.expand_dims"(%8) <{axis = 1 : i32}> : (tensor<1x256xi32>) -> tensor<1x256x1xi32>
    %10 = "tt.reduce"(%9) <{operation = "min"}> : (tensor<1x256x1xi32>) -> tensor<1x256xi32>
    "tt.return"(%10) : (tensor<1x256xi32>) -> ()
  }) : (tensor<i32>, tensor<i32>) -> (tensor<1x256xi32>)
}) : () -> ()