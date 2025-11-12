"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (i32, i32) -> (i32), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.xori"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "scf.if"(%3) ({
      %4 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
      "scf.for"(%arg2: i32, %arg3: i32, %4 : tensor<10xi32>) ({
      ^bb0(%arg4: i32, %arg5: i32):
        %6 = "arith.addi"(%arg4, %arg5) : (i32, i32) -> i32
        %7 = "arith.subi"(%6, %0) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32, i32, tensor<10xi32>) -> tensor<10xi32>
      "scf.yield"() : () -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "tt.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()