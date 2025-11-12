"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, i32) -> !secret_secret, sym_name = "nested_control_flow_secret"}> ({
    ^bb0(%arg0: !secret_secret, %arg1: i32):
      %0 = "scf.if"(%arg1) ({
        %1 = "secret.generic"(%arg0) ({
          ^bb0(%arg2: i32):
            %2 = "arith.cmpi"(%arg2, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
            %3 = "scf.if"(%2) ({
              %4 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
              "scf.yield"(%4) : (i32) -> ()
            }, {
              "scf.yield"(%arg2) : (i32) -> ()
            }) : (i1) -> i32
            "secret.yield"(%3) : (i32) -> ()
        }) : (!secret_secret) -> !secret_secret
        "scf.yield"(%1) : (!secret_secret) -> ()
      }, {
        "scf.yield"(%arg0) : (!secret_secret) -> ()
      }) : (i32) -> !secret_secret
      "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()