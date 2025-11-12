"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_if_and_for"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %2 = "scf.if"(%arg0) ({
        %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
      }, {
        %4 = "scf.for"(%1, %0, %0) ({
          ^bb1(%indvar: i32):
            %5 = "arith.addi"(%indvar, %arg0) : (i32, i32) -> i32
            "scf.yield"(%5) : (i32) -> ()
        }) : (i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32) -> i32
      "tt.return"(%2) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()