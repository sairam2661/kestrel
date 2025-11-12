"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_reduction"}> ({
  ^bb0():
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "tt.make_range"() <{end = 64 : i32, start = 1 : i32}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "tt.reduce"() <{init = 0 : i32, type = "i32", op = "add"}> ({
      ^bb1(%arg0: i32, %arg1: i32):
        %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<64xi32>) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> i32
}) : () -> ()