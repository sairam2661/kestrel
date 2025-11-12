"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x10xf32>, i1) -> (i32, tensor<4x10xf32>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x10xf32>, %arg2: i1):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_mode}>({overflowFlags.mode: i32}  ) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %0, "slt") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%3, %2, "olt") : (f32, f32) -> i1
    %5 = "scf.if"(%arg2) ({
      ^bb1:
        %6 = "scf.for"() <{lb = 0 : index, ub = 10 : index, step = 1 : index}> ({
          ^bb2(%iv: index):
            %7 = "arith.muli"(%iv, %iv) : (index, index) -> index
            %8 = "arith.addi"(%arg0, %7) : (i32, index) -> i32
            "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"(%arg0, %arg1) : (i32, tensor<4x10xf32>) -> ()
    }, {
      ^bb3:
        %6 = "scf.for"() <{lb = 0 : index, ub = 10 : index, step = 1 : index}> ({
          ^bb4(%iv: index):
            %7 = "arith.muli"(%iv, %iv) : (index, index) -> index
            %8 = "arith.addi"(%arg0, %7) : (i32, index) -> i32
            "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"(%arg0, %arg1) : (i32, tensor<4x10xf32>) -> ()
    }) : (i1) -> (i32, tensor<4x10xf32>)
    "func.return"(%5#0, %5#1) : (i32, tensor<4x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()