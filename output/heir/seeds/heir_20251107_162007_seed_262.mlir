"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}], function_type = (i32, i32, tensor<4xi1>) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<4xi1>):
    %0 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %1 = "tensor.extract"(%arg2, %iv) : (tensor<4xi1>, index) -> i1
        %2 = "arith.select"(%1, %arg0, %arg1) : (i1, i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()