"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, i32) -> i32, sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: i32):
      %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %1 = "tt.expand_dims"(%0) <{dim = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      %2 = "arith.subi"(%arg0, %1) : (tensor<16xi32>, tensor<16x1xi32>) -> tensor<16xi32>
      %3 = "tt.reduce"(%2) <{operation = "sum", reduction_dim = 0 : i32}> : (tensor<16xi32>) -> i32
      %4 = "arith.cmpi"(%3, %arg1, "slt") : (i32, i32) -> i1
      %5 = "scf.if"(%4) <{results = 1 : i1}> ({
      ^bb1:
        "tt.return"(%arg1) : (i32) -> ()
      }) {
      } : (i1) -> (i32)
      "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()