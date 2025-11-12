"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x256xi32>) -> tensor<128x256xi32>, sym_name = "test_unusual_scf_flow"}> ({
  ^bb0(%arg0: tensor<128x256xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 256 : index}> : () -> index
    "scf.for"(%0, %1, %2) <{parallel_loop = true}> ({
    ^bb1(%iv0: i32, %iv1: index, %iv2: index):
      "scf.if"(%iv0) ({
      ^bb2(%cond: i1):
        %3 = "arith.addi"(%iv1, %iv2) : (index, index) -> index
        %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i1) -> (i32)
      "scf.yield"() : () -> ()
    }) : (i32, index, index) -> ()
    %5 = "arith.subi"(%2, %1) : (index, index) -> index
    "scf.for"(%0, %1, %5) <{parallel_loop = false}> ({
    ^bb3(%iv3: i32, %iv4: index, %iv5: index):
      "scf.if"(%iv3) ({
      ^bb4(%cond: i1):
        %6 = "arith.mulsi"(%iv4, %iv5) : (index, index) -> index
        %7 = "arith.constant"() <{value = 20 : i32}> : () -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i1) -> (i32)
      "scf.yield"() : () -> ()
    }) : (i32, index, index) -> ()
    "func.return"(%arg0) : (tensor<128x256xi32>) -> ()
  }) : () -> ()
}) : () -> ()