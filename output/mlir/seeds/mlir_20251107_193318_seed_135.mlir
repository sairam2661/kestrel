"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<1x2x3xi8>) -> (i32, tensor<1x2x3xi8>), sym_name = "complex_interplay"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<1x2x3xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      ^bb1(%arg2: i1):
        %2 = "arith.addi"(%0, %arg0) : (i32, i32) -> i32
        %3 = "arith.cmpi"(%2, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
        "scf.if"(%3) ({
          ^bb2(%arg4: i1):
            %4 = "arith.addf"(%0, %0) : (f32, f32) -> f32
            "scf.yield"(%4) : (f32) -> ()
        }, {
          ^bb3:
            "scf.yield"() : () -> ()
        }) : (i1) -> (f32)
        "scf.yield"(%3) : (i1) -> ()
    }, {
      ^bb4:
        "scf.yield"() : () -> ()
    }) : (i1) -> (i1, f32)
    "func.return"(%0, %arg1) : (i32, tensor<1x2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()