module {
  func.func @test_cond_if_max_nested_depth(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>, %arg3: tensor<i1>) -> tensor<f32> {
    %0 = tosa.cond_if %arg2 -> (tensor<f32>) {
      %1 = tosa.cond_if %arg3 -> (tensor<f32>) {
        %2 = tosa.cond_if %arg2 -> (tensor<f32>) {
          %3 = tosa.cond_if %arg3 -> (tensor<f32>) {
            %4 = tosa.cond_if %arg2 -> (tensor<f32>) {
              %5 = tosa.cond_if %arg3 -> (tensor<f32>) {
                %6 = tosa.sub %arg0, %arg1 : (tensor<f32>, tensor<f32>) -> tensor<f32>
                tosa.yield %6 : tensor<f32>
              } else {
                tosa.yield %arg0 : tensor<f32>
              }
              tosa.yield %5 : tensor<f32>
            } else {
              tosa.yield %arg0 : tensor<f32>
            }
            tosa.yield %4 : tensor<f32>
          } else {
            tosa.yield %arg0 : tensor<f32>
          }
          tosa.yield %3 : tensor<f32>
        } else {
          tosa.yield %arg0 : tensor<f32>
        }
        tosa.yield %2 : tensor<f32>
      } else {
        tosa.yield %arg0 : tensor<f32>
      }
      tosa.yield %1 : tensor<f32>
    } else {
      %1 = tosa.sub %arg0, %arg1 : (tensor<f32>, tensor<f32>) -> tensor<f32>
      tosa.yield %1 : tensor<f32>
    }
    return %0 : tensor<f32>
  }
}

