module {
  func.func @test_while_loop_max_nested_depth(%arg0: tensor<i32>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %2:2 = tosa.while_loop (%arg1 = %0, %arg2 = %arg0) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>) {
      %3 = tosa.greater_equal %arg2, %arg1 : (tensor<i32>, tensor<i32>) -> tensor<i1>
      tosa.yield %3 : tensor<i1>
    } do {
    ^bb0(%arg1: tensor<i32>, %arg2: tensor<i32>):
      %3:2 = tosa.while_loop (%arg3 = %0, %arg4 = %arg0) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>) {
        %5 = tosa.greater_equal %arg4, %arg3 : (tensor<i32>, tensor<i32>) -> tensor<i1>
        tosa.yield %5 : tensor<i1>
      } do {
      ^bb0(%arg3: tensor<i32>, %arg4: tensor<i32>):
        %5:2 = tosa.while_loop (%arg5 = %0, %arg6 = %arg0) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>) {
          %7 = tosa.greater_equal %arg6, %arg5 : (tensor<i32>, tensor<i32>) -> tensor<i1>
          tosa.yield %7 : tensor<i1>
        } do {
        ^bb0(%arg5: tensor<i32>, %arg6: tensor<i32>):
          %7:2 = tosa.while_loop (%arg7 = %0, %arg8 = %arg0) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>) {
            %9 = tosa.greater_equal %arg8, %arg7 : (tensor<i32>, tensor<i32>) -> tensor<i1>
            tosa.yield %9 : tensor<i1>
          } do {
          ^bb0(%arg7: tensor<i32>, %arg8: tensor<i32>):
            %9:2 = tosa.while_loop (%arg9 = %0, %arg10 = %arg0) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>) {
              %11 = tosa.greater_equal %arg10, %arg9 : (tensor<i32>, tensor<i32>) -> tensor<i1>
              tosa.yield %11 : tensor<i1>
            } do {
            ^bb0(%arg9: tensor<i32>, %arg10: tensor<i32>):
              %11:2 = tosa.while_loop (%arg11 = %0, %arg12 = %arg0) : (tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>) {
                %13 = tosa.greater_equal %arg12, %arg11 : (tensor<i32>, tensor<i32>) -> tensor<i1>
                tosa.yield %13 : tensor<i1>
              } do {
              ^bb0(%arg11: tensor<i32>, %arg12: tensor<i32>):
                %13 = tosa.add %arg11, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
                tosa.yield %arg1, %13 : tensor<i32>, tensor<i32>
              }
              %12 = tosa.add %arg9, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
              tosa.yield %arg1, %12 : tensor<i32>, tensor<i32>
            }
            %10 = tosa.add %arg7, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
            tosa.yield %arg1, %10 : tensor<i32>, tensor<i32>
          }
          %8 = tosa.add %arg5, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
          tosa.yield %arg1, %8 : tensor<i32>, tensor<i32>
        }
        %6 = tosa.add %arg3, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
        tosa.yield %arg1, %6 : tensor<i32>, tensor<i32>
      }
      %4 = tosa.add %arg1, %1 : (tensor<i32>, tensor<i32>) -> tensor<i32>
      tosa.yield %arg1, %4 : tensor<i32>, tensor<i32>
    }
    return
  }
}

