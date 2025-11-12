"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<3x4xi64>) -> (i32, tensor<3x4xi64>), sym_name = "complex_test"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<3x4xi64>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3:2 = "scf.for"(%2) <{lower_bound = 0 : index, upper_bound = 3 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %4 = "arith.muli"(%iv, %iv) : (index, index) -> index
        %5 = "tensor.extract"(%arg1, %iv) : (tensor<3x4xi64>, index) -> tensor<4xi64>
        %6 = "scf.for"(%2) <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
          ^bb2(%jv: index):
            %7 = "tensor.extract"(%5, %jv) : (tensor<4xi64>, index) -> i64
            %8 = "arith.muli"(%7, %4) : (i64, index) -> i64
            %9 = "tensor.insert"(%8, %5, %jv) : (i64, tensor<4xi64>, index) -> tensor<4xi64>
            "scf.yield"(%9) : (tensor<4xi64>) -> ()
        }) : (tensor<4xi64>) -> (tensor<4xi64>)
        "scf.yield"(%3#1) : (tensor<3x4xi64>) -> ()
    }) : (tensor<3x4xi64>) -> (tensor<3x4xi64>)
    "func.return"(%1, %3#0) : (i32, tensor<3x4xi64>) -> ()
  }) : () -> ()
}) : () -> ()