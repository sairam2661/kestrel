"builtin.module"() ({
  "func.func"() <{function_type = (f32, i8, tensor<4xi32>) -> (f32, i8, tensor<4xi32>), sym_name = "complex_flow"}> ({
  ^bb0(%arg0: f32, %arg1: i8, %arg2: tensor<4xi32>):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.addi"(%arg1, %arg1) : (i8, i8) -> i8
    %2 = "scf.if"(%arg1) ({
      ^bb1(%cond: i1):
        %3 = "scf.yield"(%0, %1, %arg2) : (f32, i8, tensor<4xi32>) -> ()
    }, {
      ^bb2(%cond: i1):
        %4 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
          ^bb3(%iv: index):
            %5 = "arith.addi"(%iv, %iv) : (index, index) -> index
            "scf.yield"() : () -> ()
        }) : () -> ()
        %6 = "scf.yield"(%0, %1, %arg2) : (f32, i8, tensor<4xi32>) -> ()
    }) : (i8) -> (f32, i8, tensor<4xi32>)
    "func.return"(%2#0, %2#1, %2#2) : (f32, i8, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()