"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (tensor<4x4xi32>, i32) -> i32, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "scf.for"(%0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: i32, %iv0: index):
      %5 = "scf.for"(%iv) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
      ^bb2(%iv1: i32, %iv2: index):
        %6 = "tensor.extract"(%arg0, %iv2, %iv0) : (tensor<4x4xi32>, index, index) -> i32
        %7 = "arith.addi"(%iv1, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()