"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20xi32>, i32) -> tensor<10x20xi32>, sym_name = "test_if_for"}> ({
  ^bb0(%arg0: tensor<10x20xi32>, %arg1: i32):
    "scf.for"() <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      "scf.if"(%arg1) ({
      ^bb2:
        %0 = "arith.addi"(%iv, %arg1) : (i32, i32) -> i32
        "scf.yield"() : ()
      }) {
      } : (i32) -> ()
      "scf.yield"() : ()
    }) : () -> ()
    "func.return"(%arg0) : (tensor<10x20xi32>) -> ()
  }) : () -> ()
}) : () -> ()