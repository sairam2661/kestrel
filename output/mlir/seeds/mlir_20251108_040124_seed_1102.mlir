"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4x3xf32>, tensor<3xi32>) -> tensor<5x4xf32>, sym_name = "stress_test"}> ({
  ^bb0(%arg0: tensor<5x4x3xf32>, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.subi"(%2, %3) : (i32, i32) -> i32
    %5 = "tensor.reshape"(%arg0, %arg1) : (tensor<5x4x3xf32>, tensor<3xi32>) -> tensor<5x4xf32>
    "scf.for"(%3, %4, %0) ({
    ^bb1(%arg2: i32):
      "scf.if"(%arg2) ({
        %6 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
        "scf.yield"() : () -> ()
      }) {
        "scf.yield"   ="{control_flow_guard}" : () -> ()
      }
      : () -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "func.return"(%5) : (tensor<5x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "nested_loops"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%0, %1, %2) ({
    ^bb1(%arg0: index):
      "scf.for"(%arg0, %1, %2) ({
      ^bb2(%arg1: index):
        "scf.for"(%arg0, %arg1, %2) ({
        ^bb3(%arg2: index):
          "scf.for"(%arg0, %arg1, %2) ({
          ^bb4(%arg3: index):
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()