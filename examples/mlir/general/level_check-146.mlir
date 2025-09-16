"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> (), sym_name = "test_while_loop_max_nested_depth"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %2:2 = "tosa.while_loop"(%0, %arg0) ({
    ^bb0(%arg23: tensor<i32>, %arg24: tensor<i32>):
      %19 = "tosa.greater_equal"(%arg24, %arg23) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "tosa.yield"(%19) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg1: tensor<i32>, %arg2: tensor<i32>):
      %3:2 = "tosa.while_loop"(%0, %arg0) ({
      ^bb0(%arg21: tensor<i32>, %arg22: tensor<i32>):
        %18 = "tosa.greater_equal"(%arg22, %arg21) : (tensor<i32>, tensor<i32>) -> tensor<i1>
        "tosa.yield"(%18) : (tensor<i1>) -> ()
      }, {
      ^bb0(%arg3: tensor<i32>, %arg4: tensor<i32>):
        %5:2 = "tosa.while_loop"(%0, %arg0) ({
        ^bb0(%arg19: tensor<i32>, %arg20: tensor<i32>):
          %17 = "tosa.greater_equal"(%arg20, %arg19) : (tensor<i32>, tensor<i32>) -> tensor<i1>
          "tosa.yield"(%17) : (tensor<i1>) -> ()
        }, {
        ^bb0(%arg5: tensor<i32>, %arg6: tensor<i32>):
          %7:2 = "tosa.while_loop"(%0, %arg0) ({
          ^bb0(%arg17: tensor<i32>, %arg18: tensor<i32>):
            %16 = "tosa.greater_equal"(%arg18, %arg17) : (tensor<i32>, tensor<i32>) -> tensor<i1>
            "tosa.yield"(%16) : (tensor<i1>) -> ()
          }, {
          ^bb0(%arg7: tensor<i32>, %arg8: tensor<i32>):
            %9:2 = "tosa.while_loop"(%0, %arg0) ({
            ^bb0(%arg15: tensor<i32>, %arg16: tensor<i32>):
              %15 = "tosa.greater_equal"(%arg16, %arg15) : (tensor<i32>, tensor<i32>) -> tensor<i1>
              "tosa.yield"(%15) : (tensor<i1>) -> ()
            }, {
            ^bb0(%arg9: tensor<i32>, %arg10: tensor<i32>):
              %11:2 = "tosa.while_loop"(%0, %arg0) ({
              ^bb0(%arg13: tensor<i32>, %arg14: tensor<i32>):
                %14 = "tosa.greater_equal"(%arg14, %arg13) : (tensor<i32>, tensor<i32>) -> tensor<i1>
                "tosa.yield"(%14) : (tensor<i1>) -> ()
              }, {
              ^bb0(%arg11: tensor<i32>, %arg12: tensor<i32>):
                %13 = "tosa.add"(%arg11, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
                "tosa.yield"(%arg1, %13) : (tensor<i32>, tensor<i32>) -> ()
              }) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>)
              %12 = "tosa.add"(%arg9, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
              "tosa.yield"(%arg1, %12) : (tensor<i32>, tensor<i32>) -> ()
            }) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>)
            %10 = "tosa.add"(%arg7, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
            "tosa.yield"(%arg1, %10) : (tensor<i32>, tensor<i32>) -> ()
          }) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>)
          %8 = "tosa.add"(%arg5, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
          "tosa.yield"(%arg1, %8) : (tensor<i32>, tensor<i32>) -> ()
        }) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>)
        %6 = "tosa.add"(%arg3, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
        "tosa.yield"(%arg1, %6) : (tensor<i32>, tensor<i32>) -> ()
      }) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>)
      %4 = "tosa.add"(%arg1, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%arg1, %4) : (tensor<i32>, tensor<i32>) -> ()
    }) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

