"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arith_overflow_mode}>( ) : (i32, i32) -> i32
    %1 = "tensor.insert"(%0, %arg0) <{position = dense<[0]> : vector<1xi64>}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    %2 = "tensor.extract"(%1, %arg1) <{position = dense<[0]> : vector<1xi64>}> : (tensor<4xi32>, i32) -> i32
    %3 = "arith.cmpi"(%arg1, %2, "sge") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg1, %2) : (i1, i32, i32) -> i32
    %5 = "tensor.insert"(%4, %1) <{position = dense<[1]> : vector<1xi64>}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()