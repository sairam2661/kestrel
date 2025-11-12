"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi32>) -> tensor<?x?xi32>, sym_name = "transform_test"}> ({
  ^bb0(%arg0: tensor<?x?xi32>):
    %0 = "transform.structured.match"(%arg0) ({
      ^bb1(%match0: tensor<?x?xi32>): 
        %1 = "transform.named_sequence"(%match0) ({
          ^bb2(%seq0: tensor<?x?xi32>):
            %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
            %3 = "arith.addi"(%seq0, %2) : (tensor<?x?xi32>, i32) -> tensor<?x?xi32>
            "transform.yield"(%3) : (tensor<?x?xi32>) -> ()
        }) : (tensor<?x?xi32>) -> tensor<?x?xi32>
        "transform.yield"(%1) : (tensor<?x?xi32>) -> ()
    }) : (tensor<?x?xi32>) -> tensor<?x?xi32>
    "func.return"(%0) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()