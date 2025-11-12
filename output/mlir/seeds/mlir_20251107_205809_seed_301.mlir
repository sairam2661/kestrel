"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi32>) -> i32, sym_name = "complex_combination"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg0, "eq") : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
      ^bb1(%arg2: i32):
        %4 = "arith.addi"(%arg2, %arg0) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> i32
    }, {
      ^bb2(%arg3: i32):
        "scf.yield"(%arg3) : (i32) -> i32
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()